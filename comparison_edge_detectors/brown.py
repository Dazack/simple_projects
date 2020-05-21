import numpy as np
import cv2 as cv
from matplotlib import pyplot as plt

# Define paths
imagepath = 'C:/Users/phill/Dropbox/College stuff/Masters/Year1/COMP09011 - Multiple View Geometry in Computer Vision/pic1_files/stop_live.jpg'
#imagepath = 'C:/Users/phill/Dropbox/College stuff/Masters/Year1/COMP09011 - Multiple View Geometry in Computer Vision/pic1_files/stop_gen.png'

img = cv.imread(imagepath)
gray = cv.cvtColor(img,cv.COLOR_BGR2GRAY)
corners = cv.goodFeaturesToTrack(gray,25,0.01,0.05)
corners = np.int0(corners)
for i in corners:
    x,y = i.ravel()
    cv.circle(img,(x,y),3,255,-1)
plt.imshow(img),plt.show()
