/**
 * @license  Highcharts JS v6.2.0 (2018-10-17)
 *
 * Indicator series type for Highstock
 *
 * (c) 2010-2017 Paweł Fus
 *
 * License: www.highcharts.com/license
 */
'use strict';
(function (factory) {
	if (typeof module === 'object' && module.exports) {
		module.exports = factory;
	} else if (typeof define === 'function' && define.amd) {
		define(function () {
			return factory;
		});
	} else {
		factory(Highcharts);
	}
}(function (Highcharts) {
	(function (H) {


		var isArray = H.isArray;

		// Utils:
		function toFixed(a, n) {
		    return parseFloat(a.toFixed(n));
		}

		H.seriesType('rsi', 'sma',
		        /**
		         * Relative strength index (RSI) technical indicator. This series
		         * requires the `linkedTo` option to be set and should be loaded after
		         * the `stock/indicators/indicators.js` file.
		         *
		         * @extends plotOptions.sma
		         * @product highstock
		         * @sample {highstock} stock/indicators/rsi
		         *                     RSI indicator
		         * @since 6.0.0
		         * @optionparent plotOptions.rsi
		         */
		    {
		        /**
		         * @excluding index
		         */
		        params: {
		            period: 14,
		            /**
		             * Number of maximum decimals that are used in RSI calculations.
		             *
		             * @type {Number}
		             * @since 6.0.0
		             * @product highstock
		             */
		            decimals: 4
		        }
		    }, {
		        getValues: function (series, params) {
		            var period = params.period,
		                xVal = series.xData,
		                yVal = series.yData,
		                yValLen = yVal ? yVal.length : 0,
		                decimals = params.decimals,
		                // RSI starts calculations from the second point
		                // Cause we need to calculate change between two points
		                range = 1,
		                RSI = [],
		                xData = [],
		                yData = [],
		                index = 3,
		                gain = 0,
		                loss = 0,
		                RSIPoint, change, avgGain, avgLoss, i;

		            // RSI requires close value
		            if (
		                (xVal.length < period) || !isArray(yVal[0]) ||
		                yVal[0].length !== 4
		            ) {
		                return false;
		            }

		            // Calculate changes for first N points
		            while (range < period) {
		                change = toFixed(
		                    yVal[range][index] - yVal[range - 1][index],
		                    decimals
		                );

		                if (change > 0) {
		                    gain += change;
		                } else {
		                    loss += Math.abs(change);
		                }

		                range++;
		            }

		            // Average for first n-1 points:
		            avgGain = toFixed(gain / (period - 1), decimals);
		            avgLoss = toFixed(loss / (period - 1), decimals);

		            for (i = range; i < yValLen; i++) {
		                change = toFixed(yVal[i][index] - yVal[i - 1][index], decimals);

		                if (change > 0) {
		                    gain = change;
		                    loss = 0;
		                } else {
		                    gain = 0;
		                    loss = Math.abs(change);
		                }

		                // Calculate smoothed averages, RS, RSI values:
		                avgGain = toFixed(
		                    (avgGain * (period - 1) + gain) / period,
		                    decimals
		                );
		                avgLoss = toFixed(
		                    (avgLoss * (period - 1) + loss) / period,
		                    decimals
		                );
		                // If average-loss is equal zero, then by definition RSI is set
		                // to 100:
		                if (avgLoss === 0) {
		                    RSIPoint = 100;
		                // If average-gain is equal zero, then by definition RSI is set
		                // to 0:
		                } else if (avgGain === 0) {
		                    RSIPoint = 0;
		                } else {
		                    RSIPoint = toFixed(
		                        100 - (100 / (1 + (avgGain / avgLoss))),
		                        decimals
		                    );
		                }

		                RSI.push([xVal[i], RSIPoint]);
		                xData.push(xVal[i]);
		                yData.push(RSIPoint);
		            }

		            return {
		                values: RSI,
		                xData: xData,
		                yData: yData
		            };
		        }
		    }
		);

		/**
		 * A `RSI` series. If the [type](#series.rsi.type) option is not
		 * specified, it is inherited from [chart.type](#chart.type).
		 *
		 * @type {Object}
		 * @since 6.0.0
		 * @extends series,plotOptions.rsi
		 * @excluding data,dataParser,dataURL
		 * @product highstock
		 * @apioption series.rsi
		 */

		/**
		 * An array of data points for the series. For the `rsi` series type,
		 * points are calculated dynamically.
		 *
		 * @type {Array<Object|Array>}
		 * @since 6.0.0
		 * @extends series.line.data
		 * @product highstock
		 * @apioption series.rsi.data
		 */

	}(Highcharts));
	return (function () {


	}());
}));
