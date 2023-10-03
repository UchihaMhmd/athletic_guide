import 'dart:math';

// ignore: camel_case_types
class calculatepoints {
  String e = '';
  double r = 0.0;
  String g = '';
  String io = '';
  calculatepoints(String e, double r, String g, String io) {
    this.e = e;
    this.r = r;
    this.g = g;
    this.io = io;
  }
  int fnx(String e, double r, String g, String io) {
    //e = '400m';
    double points = 0;
    // ignore: prefer_typing_uninitialized_variables
    var a;
    // ignore: prefer_typing_uninitialized_variables
    var b;

    double? T = r;

    // ignore: prefer_typing_uninitialized_variables
    var c;
    // ignore: prefer_typing_uninitialized_variables, unused_local_variable
    var M;
    // ignore: prefer_typing_uninitialized_variables, unused_local_variable
    var D;
    double p1 = 1206;
    double p2 = 886;
    double t1, t2, b1, b2;

    switch (e) {
      case '100m':
        {
          if (g == 'female') {
            t1 = 10.97;
            t2 = 12.55;
            b = 21.69;
          } else {
            t1 = 10.00;
            t2 = 11.00;
            b = 16.80;
          }
          b1 = b - t1;
          b2 = b - t2;

          c = log(886 / 1206) / log(b2 / b1);
          a = 1206 / pow(b1, c);
        }
        break;
      case '200m':
        {
          if (g == 'female') {
            t1 = 22.30;
            t2 = 25.62;
            b = 44.84;
          } else {
            t1 = 20.09;
            t2 = 22.29;
            b = 35.06;
          }
          b1 = b - t1;
          b2 = b - t2;

          c = log(886 / 1206) / log(b2 / b1);
          a = 1206 / pow(b1, c);
        }
        break;
      case '400m':
        {
          if (g == 'female') {
            t1 = 49.99;
            t2 = 58.57;
            b = 108.28;
          } else {
            t1 = 44.63;
            t2 = 49.54;
            b = 78.02;
          }
          b1 = b - t1;
          b2 = b - t2;

          c = log(886 / 1206) / log(b2 / b1);
          a = 1206 / pow(b1, c);
        }
        break;
      case '100mh':
        {
          t1 = 12.59;
          t2 = 15.08;
          b = 29.53;
          b1 = b - t1;
          b2 = b - t2;

          c = log(886 / 1206) / log(b2 / b1);
          a = 1206 / pow(b1, c);
        }
        break;
      case '110mh':
        {
          t1 = 13.25;
          t2 = 15.04;
          b = 25.44;
          b1 = b - t1;
          b2 = b - t2;

          c = log(886 / 1206) / log(b2 / b1);
          a = 1206 / pow(b1, c);
        }
        break;
      case '400mh':
        {
          if (g == 'female') {
            t1 = 53.95;
            t2 = 64.82;
            b = 127.8;
          } else {
            t1 = 48.5;
            t2 = 55.21;
            b = 94.15;
          }
          b1 = b - t1;
          b2 = b - t2;

          c = log(886 / 1206) / log(b2 / b1);
          a = 1206 / pow(b1, c);
        }
        break;
      case '800m':
        {
          if (g == 'female') {
            t1 = 117.6;
            t2 = 136.51;
            b = 246.18;
          } else {
            t1 = 103.95;
            t2 = 115.1;
            b = 179.76;
          }
          b1 = b - t1;
          b2 = b - t2;

          c = log(886 / 1206) / log(b2 / b1);
          a = 1206 / pow(b1, c);
        }
        break;

      case '1500m':
        {
          if (g == 'female') {
            t1 = 239.99;
            t2 = 282.86;
            b = 531.35;
          } else {
            t1 = 212.77;
            t2 = 237.38;
            b = 380.05;
          }
          b1 = b - t1;
          b2 = b - t2;

          c = log(886 / 1206) / log(b2 / b1);
          a = 1206 / pow(b1, c);
        }
        break;
      case '3000m st':
        {
          if (g == 'female') {
            t1 = 555.24;
            t2 = 691.65;
            b = 1482.5;
          } else {
            t1 = 491.39;
            t2 = 566.91;
            b = 1004.78;
          }
          b1 = b - t1;
          b2 = b - t2;

          c = log(886 / 1206) / log(b2 / b1);
          a = 1206 / pow(b1, c);
        }
        break;
      case '5000m':
        {
          if (g == 'female') {
            t1 = 878.29;
            t2 = 1052.84;
            b = 2064.81;
          } else {
            t1 = 781.11;
            t2 = 875.25;
            b = 1421.03;
          }
          b1 = b - t1;
          b2 = b - t2;

          c = log(886 / 1206) / log(b2 / b1);
          a = 1206 / pow(b1, c);
        }
        break;
      case '10000m':
        {
          if (g == 'female') {
            t1 = 1845.87;
            t2 = 2225.09;
            b = 4418.89;
          } else {
            t1 = 1632.92;
            t2 = 1849.67;
            b = 3106.32;
          }
          b1 = b - t1;
          b2 = b - t2;

          c = log(886 / 1206) / log(b2 / b1);
          a = 1206 / pow(b1, c);
        }
        break;
      case '21km':
        {
          if (g == 'female') {
            t1 = 4054.47;
            t2 = 4889.59;
            b = 9730.59;
          } else {
            t1 = 3571;
            t2 = 4081;
            b = 7037;
          }
          b1 = b - t1;
          b2 = b - t2;

          c = log(886 / 1206) / log(b2 / b1);
          a = 1206 / pow(b1, c);
        }
        break;
      case '42km':
        {
          if (g == 'female') {
            t1 = 8520.6;
            t2 = 10596.71;
            b = 22390.45;
          } else {
            t1 = 7637;
            t2 = 8874;
            b = 15954;
          }
          b1 = b - t1;
          b2 = b - t2;

          c = log(886 / 1206) / log(b2 / b1);
          a = 1206 / pow(b1, c);
        }
        break;
      case 'Long Jump':
        {
          if (g == 'female') {
            t1 = 695;
            t2 = 548;
            b = 120;
          } else {
            t1 = 832;
            t2 = 683;
            b = 250;
          }
          b1 = t1 - b;
          b2 = t2 - b;

          c = log(886 / 1206) / log(b2 / b1);
          a = 1206 / pow(b1, c);
        }
        break;
      case 'Triple Jump':
        {
          if (g == 'female') {
            t1 = 1486;
            t2 = 1172;
            b = 253;
          } else {
            t1 = 1739;
            t2 = 1436;
            b = 551;
          }
          b1 = t1 - b;
          b2 = t2 - b;

          c = log(886 / 1206) / log(b2 / b1);
          a = 1206 / pow(b1, c);
        }
        break;
      case 'High Jump':
        {
          if (g == 'female') {
            t1 = 199;
            t2 = 166;
            b = 69;
          } else {
            t1 = 233;
            t2 = 197;
            b = 90;
          }
          b1 = t1 - b;
          b2 = t2 - b;

          c = log(886 / 1206) / log(b2 / b1);
          a = 1206 / pow(b1, c);
        }
        break;
      case 'Pole Vault':
        {
          if (g == 'female') {
            t1 = 479;
            t2 = 376;
            b = 74;
          } else {
            t1 = 578;
            t2 = 460;
            b = 115;
          }
          b1 = t1 - b;
          b2 = t2 - b;

          c = log(886 / 1206) / log(b2 / b1);
          a = 1206 / pow(b1, c);
        }
        break;
      case 'Discuss Throw':
        {
          if (g == 'female') {
            t1 = 6727;
            t2 = 4989;
            b = 113;
          } else {
            t1 = 6789;
            t2 = 5047;
            b = 156;
          }
          b1 = t1 - b;
          b2 = t2 - b;

          c = log(886 / 1206) / log(b2 / b1);
          a = 1206 / pow(b1, c);
        }
        break;
      case 'Shot Put':
        {
          if (g == 'female') {
            t1 = 1997;
            t2 = 1484;
            b = 44;
          } else {
            t1 = 2142;
            t2 = 1605;
            b = 97;
          }
          b1 = t1 - b;
          b2 = t2 - b;

          c = log(886 / 1206) / log(b2 / b1);
          a = 1206 / pow(b1, c);
        }
        break;
      case 'Hammer Throw':
        {
          if (g == 'female') {
            t1 = 7695;
            t2 = 5713;
            b = 151;
          } else {
            t1 = 8075;
            t2 = 5992;
            b = 146;
          }
          b1 = t1 - b;
          b2 = t2 - b;

          c = log(886 / 1206) / log(b2 / b1);
          a = 1206 / pow(b1, c);
        }
        break;
      case 'Javlen Throw':
        {
          if (g == 'female') {
            t1 = 6688;
            t2 = 4960;
            b = 110;
          } else {
            t1 = 8733;
            t2 = 6480;
            b = 159;
          }
          b1 = t1 - b;
          b2 = t2 - b;

          c = log(886 / 1206) / log(b2 / b1);
          a = 1206 / pow(b1, c);
        }
        break;
      case 'Heptathlon':
        {
          t1 = 6664;
          t2 = 5027;
          b = 253;
          b1 = t1 - b;
          b2 = t2 - b;

          c = log(886 / 1206) / log(b2 / b1);
          a = 1206 / pow(b1, c);
        }
        break;
      case 'Decathlon':
        {
          t1 = 8512;
          t2 = 6431;
          b = 359;
          b1 = t1 - b;
          b2 = t2 - b;

          c = log(886 / 1206) / log(b2 / b1);
          a = 1206 / pow(b1, c);
        }
        break;
    }

    points = a * pow((b - T).abs(), c);

    return points.round();
  }
}
