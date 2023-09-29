#Bài nhóm 3
import cv2
import numpy as np
import matplotlib.pyplot as plt

# k = int(input("Nhập K:"))
# n = int(input("Nhập số phần tử ngẫu nhiên:"))
k=3
n=100

#sinh ra số ngẫu nhiên từ 0-500
trainData = np.random.randint(0,500,(n,2)).astype(np.float32)
ketQua = np.random.randint(0,2,(n,1)).astype(np.float32)
#Mà đỏ là 1, màu xanh là 0
red = trainData[ketQua.ravel() == 1]
blue = trainData[ketQua.ravel() == 0]

new = np.random.randint(0,500,(1,2)).astype(np.float32)
print(f"Điểm được xét có vị trí x là {new[:,0][0]} và y là {new[:,1][0]}")

plt.scatter(red[:,0],red[:,1],60,'r','s')
plt.scatter(blue[:,0],blue[:,1],60,'b','^')
plt.scatter(new[:,0],new[:,1],60,'g','o')

knn = cv2.ml.KNearest_create()
knn.train(trainData,0, ketQua)
tmp, color, hinh, khoangCach = knn.findNearest(new, k)

if color[0][0] == 1 :
    print("Vậy phần tử ngẩu nhiên thuộc cụm đỏ")
else:
    print('Vậy phần tử ngẩu nhiên thuộc cụm xanh')
plt.show()





