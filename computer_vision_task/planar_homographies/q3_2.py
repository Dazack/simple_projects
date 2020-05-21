'''
QUESTION 3_PART B
*Take an image of the checkboard and undistort it
*Generate a set of correspondeces between the checkboard and undistorted image
*Get a 3x3 Homography Matrix
Author: Boniface Chege
'''
import numpy as np
import cv2
import glob
from matplotlib import pyplot as plt

MIN_MATCH_COUNT = 80

# termination criteria
criteria = (cv2.TERM_CRITERIA_EPS + cv2.TERM_CRITERIA_MAX_ITER, 30, 0.001)

HEIGHT = 9;
WIDTH = 6;

# prepare object points, like (0,0,0), (1,0,0), (2,0,0) ....,(6,5,0)
objp = np.zeros((HEIGHT*WIDTH,3), np.float32)
objp[:,:2] = np.mgrid[0:HEIGHT,0:WIDTH].T.reshape(-1,2)
h, w = 0, 0

# Arrays to store object points and image points from all the images.
objpoints = [] # 3d point in real world space
imgpoints = [] # 2d points in image plane.

while (True):
        #capture a frame
        img = cv2.imread('/home/boni/Documents/CompVision/Q3/pattern2.jpg')
        h, w = img.shape[:2]

        #OUr operations on the frame come here
        gray = cv2.cvtColor(img, cv2.COLOR_BGR2GRAY)

        # Find the chess board corners
        ret, corners = cv2.findChessboardCorners(gray, (HEIGHT,WIDTH),None)

        cv2.cornerSubPix(gray,corners,(11,11),(-1,-1),criteria)

        # Draw and display the corners
        cv2.drawChessboardCorners(img, (HEIGHT,WIDTH), corners,ret)
        imgpoints.append(corners.reshape(-1, 2))
        objpoints.append(objp)

        #if found print the camera matrix and the distortion coefficients
        if ret:

                ret, mtx, dist, rvecs, tvecs = cv2.calibrateCamera(objpoints, imgpoints, gray.shape[::-1],None,None)               
                print "camera matrix:\n", mtx
                print "distortion coefficients: ", dist

                #for d use the frist two terms no translation
                d = np.array([-0.06395154, 0.20861795, 0, 0, 0])
                #Undistortion 
                newcameramtx, roi=cv2.getOptimalNewCameraMatrix(mtx,d,(w,h),1,(w,h))
                dst = cv2.undistort(img,mtx,d,None,newcameramtx)
                
                #crop the image
                x,y,w,h = roi
                dst = dst[y:y+h, x:x+w]
                cv2.imwrite('calibresult.png',dst)
                
                img1 = cv2.imread('pattern2.jpg',0)
                img2 = img2 = cv2.imread('calibresult.png',0)
                break
        
                
cv2.destroyAllWindows()
