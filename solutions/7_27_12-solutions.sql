-- MySQL dump 10.13  Distrib 5.5.22, for debian-screen-gnu (i686)
--
-- Host: localhost    Database: its
-- ------------------------------------------------------
-- Server version	5.5.22-0ubuntu1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `solutions`
--

DROP TABLE IF EXISTS `solutions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `solutions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `questions_id` int(11) NOT NULL,
  `solution1` varchar(4096) NOT NULL,
  `image1` int(11) DEFAULT NULL,
  `rating1` float NOT NULL,
  `rating1count` int(11) NOT NULL,
  `solution2` varchar(4096) NOT NULL,
  `image2` int(11) DEFAULT NULL,
  `rating2` float NOT NULL,
  `rating2count` int(11) NOT NULL,
  `solution3` varchar(4096) NOT NULL,
  `image3` int(11) DEFAULT NULL,
  `rating3` float NOT NULL,
  `rating3count` int(11) NOT NULL,
  `author` int(11) NOT NULL,
  `verified` int(1) NOT NULL DEFAULT '0',
  `verified_by` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `questions_id` (`questions_id`),
  KEY `author` (`author`),
  KEY `verified_by` (`verified_by`),
  KEY `image1` (`image1`),
  KEY `image2` (`image2`),
  KEY `image3` (`image3`)
) ENGINE=MyISAM AUTO_INCREMENT=139 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `solutions`
--

/*!40000 ALTER TABLE `solutions` DISABLE KEYS */;
INSERT INTO `solutions` VALUES (1,3331,'Multiplication of two cosines : \r\ncos(A)*cos(B) = 0.5[cos(A+B)+cos(A-B)]',NULL,0,0,'',NULL,0,0,'x(t) = 10 + 8cos(40*pi*t-pi/3) + 12cos(100*pi*t+pi/4) +20cos(160*pi*t) <br><br>\r\ny(t) = x(t) cos(40*pi*t) <br><br>\r\n<b>Geometrical understanding :</b> <br>\r\nModulation property - When you multiply a signal with a property, the spectral line for each frequency moves up and down by the frequency of the modulating signal. Hence in this case, every spectral line will be moved up and down by 20 ( on frequency line) <br><br>\r\nFollowing that reshuffling, the -20 Hz component gets shifted to the right to reach DC and the 20 Hz component gets shifted to the left to reach DC. These are the two spectral lines at DC. <br>\r\nMathematically, we have to use the formula, cosA*cosB = 0.5[cos(A+B) + cos(A-B)]<br><br>\r\nSo, DC = 4cos(pi/3)',NULL,0,0,1,0,1),(2,705,'Phasor Addition',NULL,0,0,'',NULL,0,0,'You can use your calculator to add two phasors. <br><br>\r\n\r\n<latex>zz = k*exp(\\omega*j)</latex><br><br>\r\n\r\n<latex>zz =k*exp(\\omega*j)*exp(j*\\pi/2).*exp(j*{e}*\\pi*tt)</latex> : You are supposed to do this multiplication 8 times, multiplication of exponentials, effectively adds the powers. So <latex>(\\pi/2)*8 = 4*\\pi</latex>. Multiplication with ecponential multiples of <latex>2*pi</latex> makes no difference to the signal. <br><br>\r\n\r\nAt the end of the for loop,<br><br> \r\n\r\n<latex>zz = (k^8)*exp(8\\omega*j)*exp(4*\\pi).*exp(j*8e*\\pi*tt)</latex><br><br>\r\n\r\nso phase shift = <latex>8\\omega</latex> <br>\r\nomega = <latex>8e*\\pi</latex> <br>\r\ntime shift = phase shift/ omega = <latex>8\\omega/8*e*\\pi = \\omega/(\\pi*e)</latex>\r\n',NULL,0,0,1,0,1),(3,3309,'cosA*cosB = 0.5[cos(A+B) + cos(A-B)]',NULL,0,0,'',NULL,0,0,'<latex>x(t) = 5 + 6cos(30\\pi*t-3*\\frac{pi}{4}) + 4cos(80\\pi*t-\\frac{pi}{3})</latex> <br><br>\r\n\r\n<latex>y(t) = x(t)cos(30\\pi*t) </latex><br><br>\r\n\r\n<b>Geometrical understanding :</b> <br>\r\nModulation property - When you multiply a signal with a property, the spectral line for each frequency moves up and down by the frequency of the modulating signal. Hence in this case, every spectral line will be moved up and down by 30. <br><br>\r\n\r\nFollowing that reshuffling, the -30 component gets shifted to the right to reach DC and the 30 Hz component gets shifted to the left to reach DC. These are the two spectral lines at DC. <br><br>\r\n\r\nMathematically, we have to use the formula, <latex>cos(A)*cos(B) = 0.5[cos(A+B) + cos(A-B)] </latex><br><br>\r\n\r\nSo, <latex>DC = 3*cos(3*\\frac{\\pi}{4})</latex>\r\n',NULL,0,0,1,0,1),(4,3481,'Use <latex>cos^{2}A = frac{1+cos2A}{2}</latex>\r\n',NULL,0,0,'<latex> (2+ cos(2 pi 10 t))^{2} = 4 + cos^{2}(2 pi 10 t) + 2cos(2 pi 10 t) = 4 + frac{1}{2} + frac{1}{2}cos(4 pi 10 t)) + 2cos(2 pi 10 t) </latex>\r\n<br>Here, the DC term is the term that is independent of t, which is frac{9}{2}',NULL,0,0,'',NULL,0,0,1,0,1),(5,3484,'Test Hint',NULL,0,0,'Test Solution',NULL,0,0,'',NULL,0,0,1,0,1),(6,3486,'Test Hint',NULL,0,0,'Test Solution',NULL,0,0,'',NULL,0,0,1,0,1),(7,3489,'Test Hint',NULL,0,0,'Test Solution',NULL,0,0,'',NULL,0,0,1,0,1),(8,3491,'Test Hint',NULL,0,0,'Test Solution',NULL,0,0,'',NULL,0,0,1,0,1),(9,3471,'',NULL,0,0,'The impulse response of an FIR filter lasts for N+1 samples, and here, the filter order, i.e., N is 3.',NULL,0,0,'',NULL,0,0,1,0,1),(10,3472,'',NULL,0,0,'Here, N is 3 and the length of the filter is N+1, which is 4.',NULL,0,0,'',NULL,0,0,1,0,1),(11,3473,'',NULL,0,0,'At n = 1, the unit impulse function will have a nonzero value because a unit impulse function must have its parameter equal to zero in order to have a nonzero value.',NULL,0,0,'',NULL,0,0,1,0,1),(12,3479,'Test Hint',NULL,2.33,3,'Since the sum is from 0 to 1, there are two terms, each of which is multiplied with a constant, 2. Therefore, the answer is [2,2].',NULL,0,0,'',NULL,0,0,1,0,1),(13,3483,'Test Hint',NULL,0,0,'Yes, the system is causal because each term in the impulse response is in the form <latex>delta</latex>[n - k], where k <latex> geq </latex> 0',NULL,0,0,'',NULL,0,0,1,0,1),(14,3487,'Test Hint',NULL,0,0,'Test Solution',NULL,0,0,'',NULL,0,0,1,0,1),(15,3488,'Test Hint',NULL,0,0,'<latex>hat{omega} = 0.2 pi</latex>\r\n=> <latex> 2 pi frac{f}{fs} = 0.2 pi\r\n=> fs = 10f = 18000 Hz',NULL,0,0,'',NULL,0,0,1,0,1),(16,3478,'Test Hint',NULL,0,0,'Generally, continuous signals are denoted by using parentheses and discrete-time signals are denoted using square brackets. Therefore, the first option is correct.',NULL,0,0,'',NULL,0,0,1,0,1),(17,3474,'Test Hint',NULL,1,1,'The z-transform of x[n-k] is <latex> z^{k} </latex>, and in this case k = 0. Therefore, the answer is 3.',NULL,2,1,'',NULL,0,0,1,0,1),(18,3475,'Test Hint',NULL,0,0,'No, the Fourier series is applicable for a continuous-time periodic function as well.',NULL,0,0,'',NULL,0,0,1,0,1),(19,3476,'Test Hint new',NULL,2,1,'If the z-transform of a filter is in the form <latex> z^{k} </latex>, then it is causal if k <latex> leq </latex> 0; otherwise, it is not causal. Therefore, the answer is D.',NULL,5,1,'',NULL,0,0,1,0,1),(20,3477,'Test Hint',NULL,0,0,'If a[n] and b[n] are cascaded, then the z-transform of the cascaded system is equal to the product of the z-transforms of a[n] and b[n].\r\nIn this case, the z-transform of the overall system is <latex> (1-z^{-1})*(1+z^{-1}) = 1-z^{-2} </latex>.',NULL,4,1,'',NULL,0,0,1,0,1),(21,3492,'Test Hint',NULL,0,0,'Setting H(z) = 0, we find that z = <latex> \\frac{1}{3} </latex>',NULL,0,0,'',NULL,0,0,1,0,1),(22,3493,'Test Hint',NULL,0,0,'If you factor out <latex> z^{-2} </latex>, you will end up with the term <latex> z^{2} </latex> in the denominator. This means that there are two poles, that is two values for which the denominator becomes zero, i.e., 0 and 0.',NULL,0,0,'<div style=\"border:1px solid red\"><latex>\\pi</latex></div>',NULL,0.5,2,1,0,1),(23,3494,'This is a test hint .. mods made by greg',NULL,4,1,'IIR filters have poles as well as zeros, which means that the z-transform of an IIR filter will have a sum of terms in the denominator. Option A is the only one that satisfies this condition.',NULL,0,0,'',NULL,0,0,1,0,1),(24,3495,'The z-transform of <latex> a^{n}u[n] </latex> is <latex> frac{1}{1-az^{-1}} </latex>.',NULL,0,0,'Applying the formula, the answer is 4 times the z-transform of <latex> (0.2)^{n}u[n] </latex>, which is <latex> \\frac{4}{1-0.2z^{-1}} </latex>',NULL,0,0,'',NULL,0,0,1,0,1),(25,3496,'Test Hint',NULL,0,0,'The only value of t that makes the delta function non-zero is 2(sampling property). Therefore, the answer is B.',NULL,0,0,'',NULL,0,0,1,0,1),(26,3497,'Test Hint',NULL,0,0,'Since the delta function is nonzero only at t = 0, the integral converges to zero.',NULL,0,0,'',NULL,0,0,1,0,1),(27,3498,'',NULL,0,0,'The only value of t that will give a non-zero value in the entire integral is t = 1. Also, the integral of a shifted delta over any interval is 1 (as long as the the value that makes it nonzero is in the interval). Therefore, the answer is C.',NULL,0,0,'',NULL,0,0,1,0,1),(28,3499,'Test Hint',NULL,0,0,'The derivative of a continuous unit step signal is equal to the unit step signal. Hence, the answer is D.',NULL,0,0,'',NULL,0,0,1,0,1),(29,3500,'Test Hint',NULL,0,0,'Both B and C are equivalent definitions of convolution. Hence, both of them are right. The answer is D.',NULL,0,0,'',NULL,0,0,1,0,1),(30,3506,'test hint 1',NULL,0,0,'The definition of the Fourier transform states that the integral has to go from <latex> \\infty </latex> to <latex> -\\infty </latex>. Hence, the answer is A.',NULL,0,0,'',NULL,0,0,1,0,1),(31,3507,'Test Hint <latex>\\omega</latex>',NULL,0,0,'The Fourier transform of a delta function is 1.',NULL,0,0,'',NULL,0,0,1,0,1),(32,3508,'Test Hint',NULL,0,0,'According to the Fourier transform properties, the Fourier transform of <latex>exp(j \\omega_0 t)</latex> is <latex> 2\\pi \\delta(\\omega - \\omega_0) </latex>. Hence, the answer is C.',NULL,5,1,'',NULL,0,0,1,0,1),(33,3509,'Test Hint',NULL,0,0,'According to the Fourier transform properties, the Fourier transform of a shifted impulse signal, <latex>delta(t - t_0)</latex> is <latex>exp{-j\\omega t_0}</latex>. Hence, the answer is D.',NULL,0,0,'',NULL,0,0,1,0,1),(34,3510,'Test Hint',NULL,0,0,'<latex> x(t-2) </latex> can be written as <latex> x(t) * delta (t-2) </latex>. Convolution in the time domain is equivalent to multiplication in the Fourier transform domain. Hence, the answer is <latex>F(x(t))F(delta(t-2))</latex>, which is <latex> X(jomega)e^{-j2omega} </latex>. Therefore, the answer is B.',NULL,0,0,'',NULL,0,0,1,0,1),(35,3511,'Test Hint',NULL,0,0,'Convolution in the time domain is equivalent to multiplication in the Fourier transform domain. Hence, the answer is <latex> F(h(t))F(x(t)) = 	\r\nX(jomega)H(jomega)</latex>, which is option A.',NULL,0,0,'',NULL,0,0,1,0,1),(36,3330,'cosA*cosB = 0.5[cos(A+B) + cos(A-B)]',NULL,0,0,'',NULL,0,0,'x(t) = 10 + 8cos(40*pi*t-pi/3) + 12cos(100*pi*t+pi/4) +20cos(160*pi*t)<br><br>\r\n\r\ny(t) = x(t) cos(100*pi*t + pi/12)<br><br>\r\n\r\n<b>Geometrical understanding :</b><br>\r\nModulation property - When you multiply a signal with a property, the spectral line for each frequency moves up and down by the frequency of the modulating signal. Hence in this case, every spectral line will be moved up and down by 50 ( on frequency line)<br><br>\r\n\r\nFollowing that reshuffling, the -50 Hz component gets shifted to the right to reach DC and the 50 Hz component gets shifted to the left to reach DC. These are the two spectral lines at DC. <br><br>\r\n\r\nMathematically, we have to use the formula, cosA*cosB = 0.5[cos(A+B) + cos(A-B)]<br><br>\r\n\r\nSo, DC = 6cos(pi/4)\r\n',NULL,0,0,1,0,1),(37,3333,'cosA*cosB = 0.5[cos(A+B) + cos(A-B)]',NULL,0,0,'',NULL,0,0,'x(t) = 5 + 6cos(30*pi*t-3*pi/4) + 4cos(80*pi*t-pi/3) <br><br>\r\n\r\ny(t) = x(t) * x(t)<br><br>\r\n\r\n<b>Geometrical understanding : </b><br>\r\nModulation property - When you multiply a signal by itself, you shift every spectral line by a number of components. In This case, every spectral line gets shifted up and down by 0 (DC), 30*pi and 80*pi. <br><br>\r\n\r\nFollowing that reshuffling, the component -30*pi and -80*pi gets shifted to the right by 30*pi and 80*pi each to reach DC and the 30*pi and 80*pi component gets shifted to the left by 30*pi and 80*pi each to reach DC. The5 gets squared by itself to 25 <br><br>\r\n\r\nMathematically, we have to use the formula, cosA*cosB = 0.5[cos(A+B) + cos(A-B)]<br><br>\r\n\r\nSo, DC = 25 + 4cos(3*pi/4) + 2cos(-pi/3)<br><br>\r\n',NULL,0,0,1,0,1),(38,987,'period = 1/fundamental freq',NULL,0,0,'',NULL,0,0,'period = 1/fundamental freq<br><br>\r\n\r\nfundamental freq = gcd (8,16,12) = 4<br><br>\r\n\r\nperiod = 1/4 = 0.25 sec = 250 milli seconds.<br>\r\n',NULL,0,0,1,0,1),(39,3329,'',NULL,0,0,'',NULL,0,0,'x(t) = 10 + 8cos(40*pi*t-pi/3) + 12cos(100*pi*t+pi/4) +20cos(160*pi*t)<br><br>\r\n\r\nIf you compare it to : <br>\r\nx(t) = A4 + A3cos(40*pi*t + phi ) +A2cos(omega2*pi*t) + A1cos(omega_1*(t-D)) <br><br>\r\n\r\nequating coefficients, you know that L <br><br>\r\n\r\nA1cos(omega_1*(t-D)) = 12cos(100*pi*t+pi/4)<br><br>\r\n\r\nso A1 = 12<br>\r\nomega_1 * t = 100 *pi * t, so omega_1 = 100 *pi <br>\r\nomega_1 * D = pi/4 <br>\r\nD = pi/( omega_1 * 4 )<br>\r\nD = 1/ ( 400) seconds = (a/400) * 1000 milli seconds = 2.5 milli seconds <br><br>\r\n\r\nAns ==> D = 2.5 milli seconds\r\n',NULL,0,0,1,0,1),(40,88,'<latex>abs()</latex> function gives the magnitude of a signal.',NULL,3.5,2,'',NULL,0,0,'<latex>e^{-12}</latex> is a very small number almost tending to zero. <br><br>\r\n\r\nless than <latex>e^{-12}</latex> is like saying <0, so \r\nkk would be where ever <latex>abs(xx)</latex> < 0 <br><br>\r\n\r\nHowever, absolute value, or magnitude, of a signal are never negative. Hence kk = []',NULL,0,0,1,0,1),(41,460,'Phasor Addition',NULL,3,1,'',NULL,0,0,'You can use your calculator to add two phasors.<br><br>\r\n\r\n<latex> zz = k*exp{j\\omega}</latex><br><br>\r\n\r\n<latex>zz =k*exp(\\omega*j)*exp(j*{e}*pi*tt)</latex> <br>\r\n<latex>xx = kcos(e*\\pi*tt + w ) </latex><br><br>\r\n\r\n\r\nso phase shift = <latex>-\\omega</latex> <br>\r\n<latex>\\omega = e*\\pi</latex> <br>\r\ntime shift = phase shift/ omega = -w/e*pi = -w/(pi*e)\r\n',NULL,0,0,1,0,1),(42,3308,'Signal modulation',NULL,0,0,'',NULL,0,0,'x(t) = 5 + 6cos(30*pi*t-3*pi/4) + 4cos(80*pi*t-pi/3) <br><br>\r\n\r\n\r\ny(t) = x(t) cos(25*pi*t)<br><br>\r\n\r\n<b>Geometrical understanding :</b><br>\r\nModulation property - When you multiply a signal with a property, the spectral line for each frequency moves up and down by the frequency of the modulating signal. Hence in this case, every spectral line will be moved up and down by 25*pi.<br><br>\r\n\r\nFollowing that reshuffling, the 30pi component gets shifted to the right by 25 pi to reach 55pi and the 80pi component gets shifted to the left by 25 pi to reach 55 pi. These are the two spectral lines add at 55pi. <br><br>\r\n\r\nMathematically, we have to use the formula, cosA*cosB = 0.5[cos(A+B) + cos(A-B)] <br><br>\r\n\r\nSo, at 55pi = 3*cos(55*pi*t - 3*pi/4) + 2*cos(55*pi*t - pi/3)',NULL,4.67,3,1,0,1),(43,54,'hi updated',NULL,1.5,2,'',NULL,0,0,'',NULL,0,0,1,0,1),(44,3313,'Sampling - Aliasing. the w_hat should be between pi and -pi.',NULL,0,0,'',NULL,0,0,'tt = 0:(1/fs):9;<br>\r\nxx = cos(2*pi*f*tt + 0.7*pi);<br>\r\nsoundsc(xx, fsamp)<br><br>\r\n\r\nw_hat = 2*pi*f/fs<br>\r\nf_hat = w_hat/2*pi = f/fs<br>\r\nf_hat should be between -pi and pi. if not, it is a case and aliasing and accordingly add or subtract 2*pi\r\nfout = f_hat * fsamp<br><br>\r\n\r\ntherefore, fsamp = fout/f_hat \r\n',NULL,0,0,1,0,1),(45,715,'Addition of harmonic sinusoids --> fundamental frequency = gcd ( harmonics)',NULL,2,1,'',NULL,0,0,'for xx = {a}*cos({b}.3*5*pi + ({c}*12*pi*tt)) + ...\r\n         2{a}*cos({b}.3*10*pi + ({c}*18*pi*tt)) + ...\r\n           {a}3*cos({b}.3*15*pi + ({c}*24*pi*tt)); <br>\r\n\r\nThis is a case of Sum harmonic frequencies sinusoids -\r\nfundamental freq = gcd (harmonic frequencies) = gcd((c*pi*12),(c*pi*18),(c*pi*24)) = 6 <br><br>\r\n\r\nperiod = 1/fundamental freq = 1/6 = 0.1667 seconds = 1667 mili second. <br>',NULL,0,0,1,0,1),(46,3312,'',NULL,0,0,'',NULL,0,0,'xx = cos(2*pi*f*nn - pi/4);<br>\r\nsoundsc(xx, fs)<br><br>\r\n\r\nso w_hat = 2*pi*f<br>\r\nf_hat = w_hat/2*pi = f<br>\r\nf_hat should be between -pi and pi.<br>\r\nfout = f_hat * fs <br>',NULL,0,0,1,0,1),(47,3328,'Sampling and aliasing --> w_hat should be between -pi and pi.',NULL,0,0,'',NULL,0,0,'tt = 0:(1/fs):9; <br>\r\nxx = 257*cos(2*pi*f*tt - 0.7*pi); <br>\r\nsoundsc(xx, fsamp)<br><br>\r\n\r\nw_hat = 2*pi*f/fs <br>\r\nf_hat = w_hat/2*pi = f/fs <br>\r\nf_hat should be between -pi and pi. if not, it is a case and aliasing and accordingly add or subtract 2*pi <br>\r\nfout = f_hat * fsamp <br><br>\r\n\r\ntherefore, fsamp = fout/f_hat \r\n',NULL,0,0,1,0,1),(48,3324,'Convolution of unit impulses',NULL,0,0,'',NULL,0,0,'x[n] = u[n â€“ {a}] â€“ u[n â€“ {b}]<br>\r\nh[n] = {d}(u[n] â€“ u[n â€“ {c}]) <br><br>\r\n\r\nThink of x[n] as a rectangle from a to b and height 1. The impulse response can be visualised as a rectangular sliding window of height d and width c. y[n] has its maximum value when the area under the intersection of the two rectangles is maximum. That occurs when the sliding window is entirely within x[n] i.e <br><br>\r\n\r\nArea = d*c\r\n',NULL,0,0,1,0,1),(49,3512,'',NULL,0,0,'According to the Fourier transform properties, the Fourier transform of the derivative of a function, <latex> f(t) </latex>, is <latex> (jomega )F(omega ) </latex>. Therefore, the answer is C.\r\n',NULL,0,0,'',NULL,0,0,1,0,1),(50,3513,'The Fourier transform of a product of two signals is equal to the convolution of the respective Fourier transforms of the two signals, divided by <latex> 2pi </latex>.',NULL,0,0,'Since the Fourier transform of a cosine function is <latex> pi[delta(omega - omega_0)+delta(omega + omega_0)] </latex>, the answer is D.',NULL,0,0,'',NULL,0,0,1,0,1),(51,3514,'test hint',NULL,0,0,'With the multiplication of every cosine term, the amplitude gets reduced to half of the original value, and there are two terms produced. Hence, the answer is B.',NULL,0,0,'',NULL,0,0,1,0,1),(52,81,'delta[n-a] implies a pop at a i.e b_a = 1.',NULL,3,1,'A --> 1<br>\r\nB --> 3<br>\r\nC --> 2',NULL,3.33,3,'A : <br>\r\nThe plot of this frequency response will have a zero at n= 0,1  while it will have a one at n= 2.\r\n\r\n<br><br>\r\nHence filter coefficients are {0,0,1}\r\n\r\n<br><br>B:<br>\r\n<latex>y[n] = x[n] --> h[n] = \\delta[n]</latex><br>\r\n\r\nHence filter coefficients = {1,0,0}\r\n\r\n<br><br>C: <br>\r\nThe plot of this frequency response will have a one at n= 0,1  while it will have a zero at n= 2.<br>\r\n\r\nHence filter coefficients = {1,1,0}\r\n',NULL,0,0,1,0,1),(53,3167,'Phasor Addition',NULL,0,0,'',NULL,0,0,'Z = {x}e^(-j0.{y}Ï€) + {y}(e^j{x}Ï€)<br>\r\nUsing Calculaor,<br><br>\r\n\r\nZ = Ae^(jBn)<br><br>\r\n\r\nMagnitude is \'A\'.<br>',NULL,0,0,1,0,1),(54,2259,'Scaling preperty of fourier transforms :\r\n<latex>x(at) = {1/a}*X(j(\\omega/a))</latex>',NULL,4.25,4,'<latex>s(t) = 2sqrt{\\pi}e^{w^2}</latex>',NULL,3.5,2,'<latex> g(t) = e^{ -t^2} </latex> <br>\r\n<latex> s(t) = e^{-(t/2)^2} </latex><br><br> \r\n\r\nso <latex>s(t) = g(t/2)</latex><br>\r\n\r\n<latex>g(t)</latex> <--> <latex>G(jw)</latex><br><br>\r\n\r\nAccording to Scaling property :<br>\r\n<latex>g(at)</latex> <--> <latex>(1/a)*G(j(\\omega/a))</latex><br><br>\r\n\r\nComparing <latex> g(t/2) </latex> <=> <latex>g(at)</latex> ---> <latex>a = 2</latex> <br><br> \r\n<latex>s(t) = g(at) = 2*G(j(2\\omega)) </latex><br> \r\n<latex>s(t) = 2sqrt{\\pi}e^{\\omega^2}</latex>',NULL,4.67,3,1,0,1),(55,423,'In MATLAB, \'for\' loops start from 1.',NULL,0,0,'B',NULL,0,0,'In option B, when k = 1, x(k) is -10 and y(k) is <latex>exp(-j*100)</latex>. This is also true for the rest of the loop. Therefore, option B is an alternate form of the vectorization given.',NULL,0,0,1,0,1),(56,2258,'Modulation Property : <br>\r\ns(t)* cos(w0*t) = 1/2*[X(j(w+w0)+X(j(w-w0)] ',NULL,0,0,'Option C',NULL,0,0,'y(t) = sic function * cos(wt) <br><br>\r\n\r\nConvert the sinc function to frequency domain <br><br>\r\n\r\nX(jw)= [u(w+8)-u(w-8)]<br>\r\n\r\nUsing Modulation property :\r\n<br>\r\n>> 1/2[ u(w+96)-u(w-80)+ u(w-80)-u(w-96)]     <br><br> \r\n\r\nHence that equals: <br>\r\n1/2[ u(w+96)-u(w-96)+ u(w+80)-u(w-80)]\r\n\r\n<br><br>>>Hence this equals zero\r\n',NULL,0,0,1,0,1),(57,3311,'Modulation property : when you multiply a signal by a cosine, its amplitude gets halved.',NULL,0,0,'1.5',NULL,4,1,'<latex>x(t) = 5 + 6cos(30pi*t-3*\\frac{pi}{4}) + 4cos(80pi*t-\\frac{pi}{3})</latex> <br><br>\r\n\r\n<latex>y(t) = x(t)cos(50pi*t) </latex><br><br>\r\n\r\n<b>Geometrical understanding :</b> <br>\r\nModulation property - When you multiply a signal with a property, the spectral line for each frequency moves up and down by the frequency of the modulating signal. Hence in this case, every spectral line will be moved up and down by 50. <br><br>\r\n\r\nFollowing that reshuffling, the 30 component gets shifted to the right to reach 80 Hz. In the process, its amplitude is halved and so the amplitude becomes <latex> \\frac{3}{2}=1.5</latex> <br><br>\r\n\r\n',NULL,3,1,1,0,1),(58,570,'If y is a + ib, y\' = a - ib',NULL,0,0,'D',NULL,0,0,'If yy = a + ib, then yy\' = a - ib and yy*yy\' = <latex>a^{2} + b^{2} </latex>, which is the magnitude squared.',NULL,0,0,1,0,1),(59,2239,'<latex> \\delta (t) </latex> is 0 for any non-zero value of t.',NULL,0,0,'A',NULL,0,0,'For <latex> \\delta (n - 5) </latex> and <latex> \\delta (5 - n) </latex> will have the same value because for each of them to have a non-zero value, n must be equal to 5.',NULL,0,0,1,0,1),(60,3176,'The real part of a function cannot have j in it.',NULL,0,0,'B',NULL,0,0,'<latex> R{ (j w) 5 e^{j0.3pi }e^{j w t}\r\n= 5omega e^{j0.3pi } e^{jwt} e^{j pi/2} \r\n= 5omega e^{j(wt + (0.3pi + pi/2)}\r\n</latex>\r\nAlso, <latex> w = 200/pi </latex>.\r\nTherefore, the answer is D.',NULL,0,0,1,0,1),(61,3310,'Phasor addition : Only the component with the same frequency gets affected.',NULL,0,0,'',NULL,0,0,'<latex>x(t) = 5 + 6cos(30pi*t-3*\\frac{pi}{4}) + 4cos(80pi*t-\\frac{pi}{3})</latex> <br><br>\r\n\r\n<latex>y(t) = x(t)- acos(80pi*t) </latex><br><br>\r\n\r\n<b>Geometrical understanding :</b> <br>\r\nUse your caluculator. The subtraction only affects the 80*pi*t component of x(t) <br><br>\r\n\r\n<latex>y(t) = 5 + 6cos(30pi*t-3*\\frac{pi}{4}) + Acos(80pi*t-B)</latex> <br><br>\r\n\r\nThe new phase --> B.',NULL,0,0,1,0,1),(62,654,'<latex> \\frac{1}{2}(cos(A+B) + cos(A-B)) = cosA.cosB </latex>',NULL,0,0,'2c',NULL,0,0,'Using the formula given in the hint, we get <latex> f_1 </latex> = c + d and <latex> f_2 </latex> = c - d. Therefore, <latex> f_1 + f_2</latex> = 2c',NULL,0,0,1,0,1),(63,244,'Multiplying an exponent by itself \'n\' times is the same as adding the power \'n\' times i.e multiplying the power by \'n\'',NULL,0,0,'e*d + b',NULL,0,0,'<latex> zz = ae^{jb}e^{c*j*\\pi*t}</latex><br><br>\r\n\r\n<latex> zz = 2*zz*e^{c*j*\\pi*t}.*e^{je}</latex> : You are supposed to do this multiplication \'d\' times, multiplication of exponentials, effectively adds the powers. So every exponent gets multiplied by \'d\'\r\n\r\nOnly concentrating on the phase, the ej component gets multiplied by \'d\' while the bj component carries.\r\n\r\n<br><br>At the end of the for loop, \r\n\r\nso phase shift = e*d + b\r\n',NULL,0,0,1,0,1),(64,2145,'',NULL,0,0,'E',NULL,0,0,'<latex> -1 = e^{(jpi/3)*k}.\r\ne^{jpi} = e^{jpi/3)*k}.\r\n3/k = 1.\r\n</latex>\r\nTherefore, k = 3.',NULL,0,0,1,0,1),(65,764,'<latex> \\frac{1}{2\\pi}\\frac{d\\psi}{dt} = f_ inst </latex>',NULL,0,0,'f',NULL,0,0,'The value of <latex> f_inst </latex> is f - 2f2t, which, at t = 0, is f.\r\nNote: To prevent aliasing, f must be less than or equal to half the sampling frequency (8000 Hz), which means f < 4000 Hz.',NULL,0,0,1,0,1),(66,804,'Multiplying an exponent by itself \'n\' times is the same as adding the power \'n\' times i.e multiplying the power by \'n\'',NULL,0,0,'<latex>Frequency = \\frac{omega}{2*pi}= d*e + c </latex>',NULL,0,0,'<latex> zz = ae^{jb}e^{c*j*pi*t*2}</latex><br><br>\r\n\r\n<latex> zz = 2*zz*e^{e*j*pi*t*2}.*e^{jb}</latex> : You are supposed to do this multiplication \'d\' times, multiplication of exponentials, effectively adds the powers \'d\' times. So every power gets multiplied by \'d\'\r\n\r\nOnly concentrating on the powers carrying the frequency component, the <latex>e*j*pi*t*2</latex> component gets multiplied by \'d\' while the <latex>c*j*pi*t*2</latex> component carries.\r\n\r\n<br><br>At the end of the for loop, <br><Br>\r\n\r\nso <latex>omega = d*e*pi*2 + c*pi*2 </latex><br>\r\n <latex>frequency = \\frac{omega}{2*pi} = d*e + c </latex>\r\n',NULL,0,0,1,0,1),(67,2197,'u[n] * u[n]  = nu[n]',NULL,0,0,'C',NULL,0,0,'u[n] * u[n] = nu[n], and the <latex> \\delta </latex> function does not shift the rest of the signal. Therefore, the answer is nu[n].',NULL,0,0,1,0,1),(68,2194,'',NULL,0,0,'C',NULL,0,0,'length of x[n] = 25 <br><br>\r\n\r\nlength of h[n] = 25 <br><br>\r\n\r\nlength of convoluted signal = length of x[n]+length of h[n]-1 <br>\r\n\r\n<br> Therefore, length of convoluted signal<latex>  = 25 +25 -1 = 49 </latex>',NULL,0,0,1,0,1),(69,2185,'<latex>\\frac{1}{2}(cos(A+B) + cos(A-B)) = cos Acos B </latex>',NULL,2,1,'A',NULL,0,0,'In the given question, three cosines of frequencies f, 2f and 3f are multiplied with each other.\r\nMultiplying the first and second cosines with each other, we get a sum of two cosines with frequencies 3f and f. Multiplying this sum with the cosine of frequency 3f, we get a sum of four cosines with frequencies 9f, 3f, 5f, and 7f. Therefore, since not all these frequencies obey the condition f < 2fs, the signal aliases. ',NULL,0,0,1,0,1),(70,2228,'<latex> x(t) * \\ delta(t-a) = x(a) * \\ delta(t-a) </latex>',NULL,0,0,'C',NULL,0,0,'<latex> x(t) * \\ delta(t-a) = x(a) * \\ delta(t-a) </latex> <br><br>\r\n<latex> y(t) =  x(t) * [\\delta(t-1)-\\delta(t-4)] </latex><br><br>\r\nTherefore, \r\n<br> <latex> y(t) =  (x(1) *\\delta(t-1))- (x(4) *\\delta(t-4))</latex><br><br>\r\n\r\nFrom the diagram,<br><br>\r\nx(1) = 1 <br>\r\nx(4) = 0<br><br>\r\n\r\nTherefore <br>\r\n<latex> y(t) =  (1 *\\delta(t-1))</latex>',NULL,0,0,1,0,1),(71,2186,'In a signal which is the sum of three frequencies, if any of the frequencies disobeys the condition f < 2fs, the signal aliases.',NULL,0,0,'A',NULL,0,0,'f, 2f and 3f are all less than fs/2. Therefore, the signal does not alias.',NULL,0,0,1,0,1),(72,574,'<latex>f_i(t) =\\frac{1}{2*pi}\\frac{d}{dt}psi(t) </latex>',NULL,0,0,'d-2eb',NULL,0,0,'<latex>f_i(t) =\\frac{1}{2*pi}\\frac{d}{dt}psi(t) </latex>\r\n\r\n<latex> f_i(t) = d - 2*e*t </latex><br><br>\r\nThis is a decreasing frequency. Hence min occurs at t = b<br>\r\n\r\n<latex> f_i(b) = Min f_i = d - 2*e*b</latex>',NULL,0,0,1,0,1),(73,3315,'<latex>omega_{hat} =\\frac{2*pi*f}{f_s}+ 2*pi*l</latex>\r\n',NULL,0,0,'B',NULL,0,0,'',NULL,0,0,1,0,1),(74,557,'Time period = (1/f_min)',NULL,0,0,'Time period = (1/2*479)',NULL,0,0,'Highest Frequency = 2*<latex>\\pi</latex>*479 <br>\r\n<br>\r\nStacking 480 cosines ==> Vector in matlab of length 480\r\n\r\n<br><br> F_min = 2 * 479\r\n<br><br>\r\nTime period = (1/f_min) = (1/2*479)',NULL,0,0,1,0,1),(75,174,'A hamming window has no phase shift',NULL,0,0,'(-M/2)',NULL,0,0,'A hamming window has no phase shift<br><br>The sinc function phase shifts by (-M/2) In the case of sinc function, phase shift simply means that it is delayed by those many samples. \r\n\r\n<br><br> So total phase shift ( slope of the signal * hamming window) = (-M/2)\r\n',NULL,0,0,1,0,1),(81,3000,'dollar sign: $$\\pi$$ latex tag: <latex>\\pi</latex> say what',NULL,3.5,2,'23 add some latex: $$\\pi$$ add a bold tag? <b>this is bold</b>',NULL,1,1,'Down here let\'s have some italics <i>oh hi</i>',NULL,3,1,1,0,1),(82,2241,'Test hint $$\\pi$$ and now we are adding some $$\\omega\\pi$$',NULL,4,2,'$$\\pi$$ solutions',NULL,0,0,'detailed $$\\omega$$',NULL,0,0,1,0,1),(83,2,'This is a hint',NULL,0,0,'This is a solution',NULL,0,0,'This is a detailed',NULL,0,0,1,0,1),(84,32,'hello again',4972,0,0,'',NULL,0,0,'',NULL,0,0,1,0,1),(85,32,'',5015,0,0,'',NULL,0,0,'',NULL,0,0,1,0,1),(86,32,'',4916,0,0,'',NULL,0,0,'',NULL,0,0,1,0,1),(87,32,'',5048,0,0,'',NULL,0,0,'',NULL,0,0,1,0,1),(88,32,'',4759,0,0,'',NULL,0,0,'',NULL,0,0,1,0,1),(89,32,'',4799,0,0,'',NULL,0,0,'',NULL,0,0,1,0,1),(90,32,'',5288,0,0,'',NULL,0,0,'',NULL,0,0,1,0,1),(91,32,'',5203,0,0,'',NULL,0,0,'',NULL,0,0,1,0,1),(92,32,'',5098,0,0,'',NULL,0,0,'',NULL,0,0,1,0,1),(93,32,'',5115,0,0,'',NULL,0,0,'',NULL,0,0,1,0,1),(94,32,'',5161,0,0,'',NULL,0,0,'',NULL,0,0,1,0,1),(95,32,'',5136,0,0,'',NULL,0,0,'',NULL,0,0,1,0,1),(96,32,'',5081,0,0,'',NULL,0,0,'',NULL,0,0,1,0,1),(97,32,'',3657,0,0,'',NULL,0,0,'',NULL,0,0,1,0,1),(98,32,'',4123,0,0,'',NULL,0,0,'',NULL,0,0,1,0,1),(99,32,'',4144,0,0,'',NULL,0,0,'',NULL,0,0,1,0,1),(100,32,'',4260,0,0,'',NULL,0,0,'',NULL,0,0,1,0,1),(101,32,'',4207,0,0,'',NULL,0,0,'',NULL,0,0,1,0,1),(102,32,'',4256,0,0,'',NULL,0,0,'',NULL,0,0,1,0,1),(103,32,'',4492,0,0,'',NULL,0,0,'',NULL,0,0,1,0,1),(104,32,'',3078,0,0,'',NULL,0,0,'',NULL,0,0,1,0,1),(105,32,'',3113,0,0,'',NULL,0,0,'',NULL,0,0,1,0,1),(106,32,'',3001,0,0,'',NULL,0,0,'',NULL,0,0,1,0,1),(107,32,'',3003,0,0,'',NULL,0,0,'',NULL,0,0,1,0,1),(108,32,'',3031,0,0,'',NULL,0,0,'',NULL,0,0,1,0,1),(109,32,'',3137,0,0,'',NULL,0,0,'',NULL,0,0,1,0,1),(110,32,'',3048,0,0,'',NULL,0,0,'',NULL,0,0,1,0,1),(111,32,'',2867,0,0,'',NULL,0,0,'',NULL,0,0,1,0,1),(112,32,'',2868,0,0,'',NULL,0,0,'',NULL,0,0,1,0,1),(113,32,'',1997,0,0,'',NULL,0,0,'',NULL,0,0,1,0,1),(114,32,'',1982,0,0,'',NULL,0,0,'',NULL,0,0,1,0,1),(115,32,'',2731,0,0,'',NULL,0,0,'',NULL,0,0,1,0,1),(116,32,'',2766,0,0,'',NULL,0,0,'',NULL,0,0,1,0,1),(117,32,'',3558,0,0,'',NULL,0,0,'',NULL,0,0,1,0,1),(118,32,'',3595,0,0,'',NULL,0,0,'',NULL,0,0,1,0,1),(119,32,'',3382,0,0,'',NULL,0,0,'',NULL,0,0,1,0,1),(120,32,'',3337,0,0,'',NULL,0,0,'',NULL,0,0,1,0,1),(121,32,'',3393,0,0,'',NULL,0,0,'',NULL,0,0,1,0,1),(122,32,'',3351,0,0,'',NULL,0,0,'',NULL,0,0,1,0,1),(123,32,'',3160,0,0,'',NULL,0,0,'',NULL,0,0,1,0,1),(124,32,'',3163,0,0,'',NULL,0,0,'',NULL,0,0,1,0,1),(125,32,'',1693,0,0,'',NULL,0,0,'',NULL,0,0,1,0,1),(126,32,'',2086,0,0,'',NULL,0,0,'',NULL,0,0,1,0,1),(127,32,'',2051,0,0,'',NULL,0,0,'',NULL,0,0,1,0,1),(128,32,'',2181,0,0,'',NULL,0,0,'',NULL,0,0,1,0,1),(129,32,'',2238,0,0,'',NULL,0,0,'',NULL,0,0,1,0,1),(130,32,'',2211,0,0,'',NULL,0,0,'',NULL,0,0,1,0,1),(131,32,'',2616,0,0,'',NULL,0,0,'',NULL,0,0,1,0,1),(132,32,'',2496,0,0,'',NULL,0,0,'',NULL,0,0,1,0,1),(133,32,'',1264,0,0,'',NULL,0,0,'',NULL,0,0,1,0,1),(134,32,'',1524,0,0,'',NULL,0,0,'',NULL,0,0,1,0,1),(135,32,'',1426,0,0,'',NULL,0,0,'',NULL,0,0,1,0,1),(136,32,'',1445,0,0,'',NULL,0,0,'',NULL,0,0,1,0,1),(137,3,'hello there',NULL,0,0,'',NULL,0,0,'',NULL,0,0,1,0,1),(138,4,'hi there',NULL,0,0,'sol test',NULL,0,0,'det test hi hi',1,0,0,1,0,1);
/*!40000 ALTER TABLE `solutions` ENABLE KEYS */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2012-07-27 15:54:05
