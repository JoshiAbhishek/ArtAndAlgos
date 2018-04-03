/*:
 The following sources were referenced and utilized in creating this Playground:
 
 Devadoss, Satyan L., and Joseph O'Rourke. Discrete and Computational Geometry. Princeton University Press, 2011.
 
 “Delaunay Triangulation.” Wikipedia, Wikimedia Foundation, 30 Mar. 2018, en.wikipedia.org/wiki/Delaunay_triangulation.

 Littlejohn, Alex. “DelaunayTriangulationSwift.” GitHub, 25 Aug. 2017, github.com/AlexLittlejohn/DelaunaySwift.
 
 Kopsch, Matthias. “The Delaunay Triangulation with All the Circumcircles and Their Centers (in Red).” Wikipedia, Wikimedia Foundation, 1 Apr. 2012, en.wikipedia.org/wiki/File:Delaunay_circumcircles_centers.svg.
 
 Reynermedia. “City.” Flickr, Yahoo!, 17 Aug. 2006, www.flickr.com/photos/89228431@N06/11285730373/in/photolist-ichjsa-dN3YmV-bmM5be-csbBrN-JNuEcx-ivMkVC-bmM7Xv-bmM65P-byri89-bUPesK-o1LHJv-Pk9UMN-6chqid-dw75Ym-dgqGNf-FXLYuy-VQgJAv-qboBkd-MQtYJa-bmgfTK-GBwkmk-7NWDVb-cGsDb5-Ffyzsq-ijPQMs-dzBcf4-dAgNnL-LqdRLZ-gUTT4o-e2fe6j-dyBDjm-biW9vT-aXzda2-BeHbMJ-jWGQyE-fKua25-254dwh-rvZYuT-h33shk-8RDRJn-dhdxan-bVQswo-NQWWfQ-ecYBbQ-7NWCPU-S6DAJG-gfBgPp-ZBCnkP-nifyTQ-SN44RY.
 
 Prado, Eric. “Mt. Rainier.” Flickr, Yahoo!, 1 Aug. 2017, www.flickr.com/photos/pdx_rollingthunder/36322375935/in/photolist-XkFEUX-5b3qFF-7DG23b-52V4Ar-VzX5D1-dimvmD-WJFNAy-ophweS-dHPuGQ-VBTHWj-oESjDF-WJFPbb-8nqrzj-ffPAg-6JSFDK-qHS8FJ-WGFgT4-6JWcvA-5b3rCr-nRoLmX-8AveAp-cLrZPL-8s6UnG-8s6UF7-6JfW4M-8s3Ruz-7wLWZ8-6SjFL9-736fbf-5b3rcK-nLQg96-oRsVje-3U4xa8-CBPT2D-7UzPWv-7QqXyA-8s3QNn-8s3Rjz-oze6Qr-6SfCrv-8s3Qi8-8s3NB2-agGmPU-7wQHUC-5b3sC4-5b3sKD-6SjJR9-8s3RrK-bVoiX9-bVomRL.
 
 Chalkie_CC. “Flower Power.” Flickr, Yahoo!, 6 May 2007, www.flickr.com/photos/chalkie_circle2000/486235093/in/photolist-JY5KF-jhDt5c-pBKi2F-6pLdmx-eiwjw2-dfNGdU-s4p4US-pDuatR-fPP9cz-22nKcU-pGvQuS-fzNC5E-4nFGkq-4s88XL-rxuHdE-oUGsAr-4Zf5YU-ejFogw-9idgrw-cEGVuw-cRJ921-2KZ3u1-dh8kKy-mCSLtP-bUUpcL-Pv4hF-onyL7c-dRwmTe-eaZQJC-bio9o-AJTVC-ftjaU3-5wdRPw-eJ94ym-dcymva-aAKkN-bsXJNN-9Lgzrq-orp9cz-oSY6u5-e9hqk3-nSVJjo-d6B3c5-qQiWEr-oKhu1y-eex3F3-dj7uSr-m3ub8k-sjJY95-9FbiE1.
 */
//#-hidden-code
import Foundation
import SpriteKit
import PlaygroundSupport
//#-end-hidden-code
let trianglesScale = /*#-editable-code*/50/*#-end-editable-code*/
let funColorScheme = [/*#-editable-code*/#colorLiteral(red: 0.9568627451, green: 0.5294117647, blue: 0.7294117647, alpha: 1)/*#-end-editable-code*/, /*#-editable-code*/#colorLiteral(red: 0.9568627451, green: 0.9254901961, blue: 0.6470588235, alpha: 1)/*#-end-editable-code*/, /*#-editable-code*/#colorLiteral(red: 0.7215686275, green: 0.9568627451, blue: 0.8156862745, alpha: 1)/*#-end-editable-code*/, /*#-editable-code*/#colorLiteral(red: 0.5921568627, green: 0.8352941176, blue: 0.9568627451, alpha: 1)/*#-end-editable-code*/, /*#-editable-code*/#colorLiteral(red: 0.8549019608, green: 0.6666666667, blue: 0.9568627451, alpha: 1)/*#-end-editable-code*/]

createDelaunayPattern(numCells: trianglesScale, colorScheme: funColorScheme)
