import numpy as np
import cv2
import time
import matplotlib.pyplot as plt

# Define paths
#imagepath = 'C:/Users/phill/Dropbox/College stuff/Masters/Year1/COMP09011 - Multiple View Geometry in Computer Vision/pic1_files/chessboard.png'
#imagepath = 'C:/Users/phill/Dropbox/College stuff/Masters/Year1/COMP09011 - Multiple View Geometry in Computer Vision/pic1_files/cybertruck.jpg'

image1 = cv2.imread('C:/Users/phill/Dropbox/College stuff/Masters/Year1/COMP09011 - Multiple View Geometry in Computer Vision/pic1_files/plug_1.jpg')
image2 = cv2.imread('C:/Users/phill/Dropbox/College stuff/Masters/Year1/COMP09011 - Multiple View Geometry in Computer Vision/pic1_files/plug_2.jpg')


# Initiate ORB detector
orb = cv2.ORB_create()

#def cornerHarris (img):
img = image1
gray = cv2.cvtColor(img, cv2.COLOR_BGR2GRAY )
gray = np.float32(gray)
dst = cv2.cornerHarris(gray,2,3,0.04)
print("dst: ", dst)
# compute the descriptors with ORB
#result is dilated for marking the corners, not important
dst = cv2.dilate(dst, None)
# Threshold for an optimal value, it may vary depending on the image.
img[dst>0.01*dst.max()]=[0,0,100]
kp, des = orb.compute(img, None)

#pros_img1 = cornerHarris(image1)
#pros_img2 = cornerHarris(image2)

cv2.namedWindow('img', cv2.WINDOW_NORMAL)
cv2.resizeWindow('img', 600, 600)
cv2.imshow('img', image1)

cv2.namedWindow('img2', cv2.WINDOW_NORMAL)
cv2.resizeWindow('img2', 600, 600)
cv2.imshow('img2', image2)


kp1 = orb.detect(img,None)
kp2, des2 = orb.detectAndCompute(img,None)
#debug
print("Kp", kp1, kp2)
#print("Des", des1, des2)

# create BFMatcher object
bf = cv2.BFMatcher(cv2.NORM_HAMMING, crossCheck=True)
# Match descriptors.
#matches = bf.match(des1,des2)
# Sort them in the order of their distance.
#matches = sorted(matches, key = lambda x:x.distance)

print("BF", bf)
#print("Matches", matches)
# Draw first 10 matches.
#img3 = cv2.drawMatches(pros_img1,kp1,pros_img2,kp2,matches[:5],None,flags=cv2.DrawMatchesFlags_NOT_DRAW_SINGLE_POINTS)
#plt.imshow(img3),plt.show()


if cv2.waitKey(0) & 0xff == 27:
    cv2.destroyAllWindows()



