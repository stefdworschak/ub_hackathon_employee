<template>
  <div>
  <div class="row">
      <div class="col-md-12">
        <div class="card card-stats card-raised">
          <div class="card-body">
            <div class="row">
              <div class="col-md-4">
                <div class="statistics">
                  <div class="info">
                    <div class="icon icon-success">
                      <i class="now-ui-icons business_money-coins"></i>
                    </div>
                    <h3 class="info-title">
                        <small>€</small>
                      <animated-number :value="853000"></animated-number>
                    </h3>
                    <h6 class="stats-title">Company Valuation</h6>
                  </div>
                </div>
              </div>
              <div class="col-md-4">
                <div class="statistics">
                  <div class="info">
                    <div class="icon icon-success">
                      <i class="now-ui-icons business_money-coins"></i>
                    </div>
                    <h3 class="info-title">
                      <small>€</small>
                      <animated-number :value="40"></animated-number>
                    </h3>
                    <h6 class="stats-title">Share Price</h6>
                  </div>
                </div>
              </div>
              <div class="col-md-4">
                <div class="statistics">
                  <div class="info">
                    <div class="icon icon-info">
                      <i class="now-ui-icons users_single-02"></i>
                    </div>
                    <h3 class="info-title">
                      <animated-number :value="74"></animated-number>
                    </h3>
                    <h6 class="stats-title">Shares Issued</h6>
                  </div>
                </div>
              </div>
              <div class="col-md-5">
                <!--<div class="statistics">
                  <div class="info">
                    <div class="icon icon-danger">
                      <i class="now-ui-icons objects_support-17"></i>
                    </div>
                    <h3 class="info-title">
                      <animated-number :value="353"></animated-number>
                    </h3>
                    <h6 class="stats-title">Total Shares Issued</h6>
                  </div>
                </div>-->
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>

    <div class="row">
      <div class="col-md-5 ml-auto">
        <!--<card class="card-chart" no-footer-line>
          <template slot="header">
            <h5 class="card-category">Simple with gradient</h5>
            <h4 class="card-title">Line Chart</h4>
            <drop-down position="right">
              <n-button
                slot="title"
                class="dropdown-toggle no-caret"
                round
                simple
                icon
              >
                <i class="now-ui-icons loader_gear"></i>
              </n-button>

              <a class="dropdown-item" href="#">Action</a>
              <a class="dropdown-item" href="#">Another action</a>
              <a class="dropdown-item" href="#">Something else here</a>
              <a class="dropdown-item text-danger" href="#">Remove Data</a>
            </drop-down>
          </template>
          <div class="chart-area">
            <line-chart
              :labels="lineChart1.labels"
              :data="lineChart1.data"
              :color="lineChart1.color"
              :height="200"
            >
            </line-chart>
          </div>
          <div slot="footer" class="stats">
            <i class="now-ui-icons arrows-1_refresh-69"></i> Just Updated
          </div>
        </card>-->
      </div>

      <div class="col-md-5 mr-auto">
        <!--<card class="card-chart" no-footer-line>
          <template slot="header">
            <h5 class="card-category">With Numbers And Grid</h5>
            <h4 class="card-title">Line Chart 2</h4>
            <drop-down position="right">
              <n-button
                slot="title"
                class="dropdown-toggle no-caret"
                round
                simple
                icon
              >
                <i class="now-ui-icons loader_gear"></i>
              </n-button>

              <a class="dropdown-item" href="#">Action</a>
              <a class="dropdown-item" href="#">Another action</a>
              <a class="dropdown-item" href="#">Something else here</a>
              <a class="dropdown-item text-danger" href="#">Remove Data</a>
            </drop-down>
          </template>
          <div class="chart-area">
            <line-chart
              :labels="lineChart2.labels"
              :data="lineChart2.data"
              :color="lineChart2.color"
              :extraOptions="lineChart2.extraOptions"
              :height="200"
            >
            </line-chart>
          </div>
          <div slot="footer" class="stats">
            <i class="now-ui-icons arrows-1_refresh-69"></i> Just Updated
          </div>
        </card>-->
      </div>
    </div>
    <div class="row">
      <div class="col-md-5 ml-auto">
        <!--<card class="card-chart" no-footer-line>
          <template slot="header">
            <h5 class="card-category">Simple With Grids And Numbers</h5>
            <h4 class="card-title">Bar Chart</h4>
          </template>
          <div class="chart-area">
            <bar-chart
              :labels="barChart1.labels"
              :data="barChart1.data"
              :color="barChart1.color"
              :title="barChart1.title"
              :height="300"
            >
            </bar-chart>
          </div>
          <div slot="footer" class="stats">
            <i class="now-ui-icons ui-2_time-alarm"></i> Last 7 days
          </div>
        </card>-->
      </div>

      <div class="col-md-12 mr-auto">
        <card class="card-chart" no-footer-line>
          <template slot="header">
            <h5 class="card-category">Number of Shares over time</h5>
            <h4 class="card-title">Employee Shares</h4>
          </template>
          <div class="chart-area">
            <bar-chart
              :labels="barChart2.labels"
              :datasets="barChart2.datasets"
              :height="200"
            >
            </bar-chart>
          </div>
          <div slot="footer" class="stats">
            <i class="now-ui-icons ui-2_time-alarm"></i> Last 7 days
          </div>
        </card>
      </div>
    </div>
  </div>
</template>
<script>
import {
  Card,
  Table as NTable,
  AnimatedNumber,
  Progress as NProgress,
  AsyncWorldMap
} from "src/components"

import LineChart from "src/components/Charts/LineChart";
import BarChart from "src/components/Charts/BarChart";
export default {
  components: {
    Card,
    NTable,
    AnimatedNumber,
    LineChart,
    NProgress,
    AsyncWorldMap,
    LineChart,
    BarChart
  },
  data() {
    return {
      lineChart1: {
        labels: [
          "Jan",
          "Feb",
          "Mar",
          "Apr",
          "May",
          "Jun",
          "Jul",
          "Aug",
          "Sep",
          "Oct",
          "Nov",
          "Dec"
        ],
        data: [542, 480, 430, 550, 530, 453, 380, 434, 568, 610, 700, 630],
        color: "#f96332"
      },
      lineChart2: {
        labels: ["12pm,", "3pm", "6pm", "9pm", "12am", "3am", "6am", "9am"],
        data: [40, 500, 650, 700, 1200, 1250, 1300, 1900],
        color: "#18ce0f",
        extraOptions: {
          scales: {
            yAxes: [
              {
                gridLines: {
                  zeroLineColor: "transparent",
                  drawBorder: false
                }
              }
            ],
            xAxes: [
              {
                display: 0,
                ticks: {
                  display: false
                },
                gridLines: {
                  zeroLineColor: "transparent",
                  drawTicks: false,
                  display: false,
                  drawBorder: false
                }
              }
            ]
          }
        }
      },
      barChart1: {
        labels: [
          "January",
          "February",
          "March",
          "April",
          "May",
          "June",
          "July",
          "August",
          "September",
          "October",
          "November",
          "December"
        ],
        data: [80, 99, 86, 96, 123, 85, 100, 75, 88, 90, 123, 155],
        color: "#2CA8FF",
        title: "Active Countries"
      },
      barChart2: {
        labels: [
          "January",
          "February",
          "March",
          "April",
          "May",
          "June",
          "July",
          "August",
          "September",
          "October",
          "November",
          "December"
        ],
        datasets: [
          {
            backgroundColor: "#f96332",
            data: [30, 40, 50, 50, 60, 70, 70, 80, 90, 90, 100, 120]
          },
          
        ]
      }
    };
  }
};
</script>
<style></style>
