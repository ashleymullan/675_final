library(stringr)

# Sample text containing the start and end strings
text <- "Epoch 1/100
86/86 [==============================] - 260s 3s/step - loss: 32402016.0000 - mae: 918.0080 - val_loss: 208.9000 - val_mae: 11.7528
Epoch 2/100
86/86 [==============================] - 238s 3s/step - loss: 14067.2607 - mae: 75.9142 - val_loss: 184.7691 - val_mae: 10.9204
Epoch 3/100
86/86 [==============================] - 244s 3s/step - loss: 420.3762 - mae: 15.1981 - val_loss: 182.9950 - val_mae: 10.8703
Epoch 4/100
86/86 [==============================] - 237s 3s/step - loss: 155.4551 - mae: 10.2404 - val_loss: 152.1175 - val_mae: 9.8746
Epoch 5/100
86/86 [==============================] - 235s 3s/step - loss: 137.6279 - mae: 9.6871 - val_loss: 153.1324 - val_mae: 9.9231
Epoch 6/100
86/86 [==============================] - 244s 3s/step - loss: 124.9739 - mae: 9.2300 - val_loss: 128.0796 - val_mae: 9.1194
Epoch 7/100
86/86 [==============================] - 235s 3s/step - loss: 119.2311 - mae: 9.0175 - val_loss: 101.0271 - val_mae: 8.2106
Epoch 8/100
86/86 [==============================] - 244s 3s/step - loss: 114.2486 - mae: 8.8079 - val_loss: 104.4838 - val_mae: 8.3288
Epoch 9/100
86/86 [==============================] - 234s 3s/step - loss: 108.2819 - mae: 8.5524 - val_loss: 81.7380 - val_mae: 7.4077
Epoch 10/100
86/86 [==============================] - 235s 3s/step - loss: 103.8296 - mae: 8.3496 - val_loss: 90.8659 - val_mae: 7.7900
Epoch 11/100
86/86 [==============================] - 235s 3s/step - loss: 96.9422 - mae: 8.0186 - val_loss: 107.8835 - val_mae: 8.4628
Epoch 12/100
86/86 [==============================] - 236s 3s/step - loss: 92.1570 - mae: 7.7889 - val_loss: 104.5759 - val_mae: 8.3223
Epoch 13/100
86/86 [==============================] - 236s 3s/step - loss: 84.3126 - mae: 7.4312 - val_loss: 93.1218 - val_mae: 7.8078
Epoch 14/100
86/86 [==============================] - 236s 3s/step - loss: 78.7747 - mae: 7.1195 - val_loss: 114.5273 - val_mae: 8.7200
Epoch 15/100
86/86 [==============================] - 237s 3s/step - loss: 73.9647 - mae: 6.8823 - val_loss: 105.6722 - val_mae: 8.3619
Epoch 16/100
86/86 [==============================] - 236s 3s/step - loss: 71.2488 - mae: 6.7442 - val_loss: 89.3281 - val_mae: 7.7158
Epoch 17/100
86/86 [==============================] - 236s 3s/step - loss: 66.5180 - mae: 6.4936 - val_loss: 84.7866 - val_mae: 7.5236
Epoch 18/100
86/86 [==============================] - 235s 3s/step - loss: 62.9080 - mae: 6.2816 - val_loss: 98.5651 - val_mae: 8.1291
Epoch 19/100
86/86 [==============================] - 235s 3s/step - loss: 59.0725 - mae: 6.0817 - val_loss: 96.8730 - val_mae: 8.0472
Epoch 20/100
86/86 [==============================] - 244s 3s/step - loss: 56.9009 - mae: 5.9638 - val_loss: 77.8559 - val_mae: 7.2016
Epoch 21/100
86/86 [==============================] - 237s 3s/step - loss: 54.8290 - mae: 5.8754 - val_loss: 86.6458 - val_mae: 7.5815
Epoch 22/100
86/86 [==============================] - 237s 3s/step - loss: 52.9384 - mae: 5.7512 - val_loss: 89.3363 - val_mae: 7.7213
Epoch 23/100
86/86 [==============================] - 237s 3s/step - loss: 50.2657 - mae: 5.5906 - val_loss: 83.3825 - val_mae: 7.4555
Epoch 24/100
86/86 [==============================] - 243s 3s/step - loss: 49.0890 - mae: 5.5470 - val_loss: 72.7420 - val_mae: 6.8659
Epoch 25/100
86/86 [==============================] - 235s 3s/step - loss: 48.8183 - mae: 5.5019 - val_loss: 75.9762 - val_mae: 7.0678
Epoch 26/100
86/86 [==============================] - 237s 3s/step - loss: 46.8831 - mae: 5.3913 - val_loss: 71.8936 - val_mae: 6.8636
Epoch 27/100
86/86 [==============================] - 235s 3s/step - loss: 45.0365 - mae: 5.2776 - val_loss: 66.8681 - val_mae: 6.6081
Epoch 28/100
86/86 [==============================] - 236s 3s/step - loss: 45.0285 - mae: 5.2813 - val_loss: 67.6743 - val_mae: 6.4131
Epoch 29/100
86/86 [==============================] - 237s 3s/step - loss: 44.3563 - mae: 5.2503 - val_loss: 77.1663 - val_mae: 7.1390
Epoch 30/100
86/86 [==============================] - 238s 3s/step - loss: 42.7509 - mae: 5.1389 - val_loss: 75.2872 - val_mae: 6.9194
Epoch 31/100
86/86 [==============================] - 238s 3s/step - loss: 42.3454 - mae: 5.1249 - val_loss: 71.1237 - val_mae: 6.7732
Epoch 32/100
86/86 [==============================] - 235s 3s/step - loss: 41.3313 - mae: 5.0672 - val_loss: 72.8234 - val_mae: 6.9484
Epoch 33/100
86/86 [==============================] - 236s 3s/step - loss: 40.1481 - mae: 5.0014 - val_loss: 80.4211 - val_mae: 7.2518
Epoch 34/100
86/86 [==============================] - 235s 3s/step - loss: 40.6952 - mae: 5.0125 - val_loss: 79.4446 - val_mae: 7.1908
Epoch 35/100
86/86 [==============================] - 235s 3s/step - loss: 39.3407 - mae: 4.9523 - val_loss: 71.5595 - val_mae: 6.7918
Epoch 36/100
86/86 [==============================] - 237s 3s/step - loss: 38.8686 - mae: 4.9165 - val_loss: 68.4911 - val_mae: 6.6047
Epoch 37/100
86/86 [==============================] - 244s 3s/step - loss: 39.0278 - mae: 4.8957 - val_loss: 70.8435 - val_mae: 6.6777
Epoch 38/100
86/86 [==============================] - 236s 3s/step - loss: 37.7346 - mae: 4.8297 - val_loss: 71.4214 - val_mae: 6.8072
Epoch 39/100
86/86 [==============================] - 234s 3s/step - loss: 37.5487 - mae: 4.8279 - val_loss: 68.6159 - val_mae: 6.6165
Epoch 40/100
86/86 [==============================] - 234s 3s/step - loss: 36.6076 - mae: 4.7515 - val_loss: 61.9737 - val_mae: 6.2561
Epoch 41/100
86/86 [==============================] - 233s 3s/step - loss: 36.5434 - mae: 4.7669 - val_loss: 64.3467 - val_mae: 6.4018
Epoch 42/100
86/86 [==============================] - 237s 3s/step - loss: 36.4358 - mae: 4.7456 - val_loss: 73.4122 - val_mae: 6.9491
Epoch 43/100
86/86 [==============================] - 245s 3s/step - loss: 35.5726 - mae: 4.6722 - val_loss: 67.6426 - val_mae: 6.5386
Epoch 44/100
86/86 [==============================] - 243s 3s/step - loss: 35.5996 - mae: 4.6919 - val_loss: 80.5018 - val_mae: 7.2331
Epoch 45/100
86/86 [==============================] - 234s 3s/step - loss: 34.8801 - mae: 4.6376 - val_loss: 73.7846 - val_mae: 6.9038
Epoch 46/100
86/86 [==============================] - 243s 3s/step - loss: 34.1853 - mae: 4.5989 - val_loss: 72.0450 - val_mae: 6.7568
Epoch 47/100
86/86 [==============================] - 236s 3s/step - loss: 34.3426 - mae: 4.6169 - val_loss: 74.1148 - val_mae: 6.8160
Epoch 48/100
86/86 [==============================] - 232s 3s/step - loss: 34.1376 - mae: 4.5857 - val_loss: 68.2412 - val_mae: 6.6255
Epoch 49/100
86/86 [==============================] - 235s 3s/step - loss: 33.9661 - mae: 4.5734 - val_loss: 71.7363 - val_mae: 6.6965
Epoch 50/100
86/86 [==============================] - 236s 3s/step - loss: 33.8068 - mae: 4.5621 - val_loss: 74.2688 - val_mae: 6.8622
Epoch 51/100
86/86 [==============================] - 235s 3s/step - loss: 33.1478 - mae: 4.5295 - val_loss: 77.4562 - val_mae: 6.9854
Epoch 52/100
86/86 [==============================] - 236s 3s/step - loss: 32.7357 - mae: 4.4942 - val_loss: 74.1622 - val_mae: 6.8534
Epoch 53/100
86/86 [==============================] - 237s 3s/step - loss: 32.5216 - mae: 4.4706 - val_loss: 74.3276 - val_mae: 6.8689
Epoch 54/100
86/86 [==============================] - 237s 3s/step - loss: 32.5399 - mae: 4.4797 - val_loss: 68.1094 - val_mae: 6.5864
Epoch 55/100
86/86 [==============================] - 235s 3s/step - loss: 32.5092 - mae: 4.4776 - val_loss: 69.8979 - val_mae: 6.6024
Epoch 56/100
86/86 [==============================] - 236s 3s/step - loss: 31.8361 - mae: 4.4409 - val_loss: 64.3567 - val_mae: 6.4028
Epoch 57/100
86/86 [==============================] - 237s 3s/step - loss: 31.6340 - mae: 4.4158 - val_loss: 70.4837 - val_mae: 6.7785
Epoch 58/100
86/86 [==============================] - 237s 3s/step - loss: 31.0784 - mae: 4.3753 - val_loss: 73.6133 - val_mae: 6.9602
Epoch 59/100
86/86 [==============================] - 236s 3s/step - loss: 31.2070 - mae: 4.3735 - val_loss: 68.0963 - val_mae: 6.4767
Epoch 60/100
86/86 [==============================] - 235s 3s/step - loss: 31.1911 - mae: 4.3913 - val_loss: 78.8096 - val_mae: 7.1208
Epoch 61/100
86/86 [==============================] - 235s 3s/step - loss: 30.4197 - mae: 4.3404 - val_loss: 81.7327 - val_mae: 7.2312
Epoch 62/100
86/86 [==============================] - 235s 3s/step - loss: 30.4064 - mae: 4.3216 - val_loss: 74.8030 - val_mae: 6.8726
Epoch 63/100
86/86 [==============================] - 233s 3s/step - loss: 30.4655 - mae: 4.3329 - val_loss: 70.8499 - val_mae: 6.6935
Epoch 64/100
86/86 [==============================] - 236s 3s/step - loss: 30.3417 - mae: 4.3265 - val_loss: 69.2018 - val_mae: 6.5310
Epoch 65/100
86/86 [==============================] - 233s 3s/step - loss: 29.6428 - mae: 4.2713 - val_loss: 75.0280 - val_mae: 7.0002
Epoch 66/100
86/86 [==============================] - 232s 3s/step - loss: 29.7828 - mae: 4.2697 - val_loss: 75.3992 - val_mae: 6.9229
Epoch 67/100
86/86 [==============================] - 232s 3s/step - loss: 29.8971 - mae: 4.2765 - val_loss: 70.2186 - val_mae: 6.6390
Epoch 68/100
86/86 [==============================] - 234s 3s/step - loss: 29.7438 - mae: 4.2857 - val_loss: 73.6425 - val_mae: 6.7988
Epoch 69/100
86/86 [==============================] - 233s 3s/step - loss: 29.0064 - mae: 4.2135 - val_loss: 78.1959 - val_mae: 7.0846
Epoch 70/100
86/86 [==============================] - 231s 3s/step - loss: 28.5935 - mae: 4.1970 - val_loss: 76.3907 - val_mae: 6.9546
Epoch 71/100
86/86 [==============================] - 232s 3s/step - loss: 28.7749 - mae: 4.2091 - val_loss: 74.3965 - val_mae: 6.9368
Epoch 72/100
86/86 [==============================] - 231s 3s/step - loss: 28.0034 - mae: 4.1594 - val_loss: 78.8124 - val_mae: 7.0035
Epoch 73/100
86/86 [==============================] - 231s 3s/step - loss: 28.5258 - mae: 4.1791 - val_loss: 73.7742 - val_mae: 6.9724
Epoch 74/100
86/86 [==============================] - 239s 3s/step - loss: 28.4523 - mae: 4.1690 - val_loss: 73.3713 - val_mae: 6.7690
Epoch 75/100
86/86 [==============================] - 232s 3s/step - loss: 28.2391 - mae: 4.1639 - val_loss: 78.5931 - val_mae: 7.0926
Epoch 76/100
86/86 [==============================] - 230s 3s/step - loss: 27.8378 - mae: 4.1200 - val_loss: 72.5366 - val_mae: 6.6980
Epoch 77/100
86/86 [==============================] - 232s 3s/step - loss: 27.8574 - mae: 4.1308 - val_loss: 73.1095 - val_mae: 6.7862
Epoch 78/100
86/86 [==============================] - 230s 3s/step - loss: 28.0106 - mae: 4.1462 - val_loss: 77.5555 - val_mae: 7.0685
Epoch 79/100
86/86 [==============================] - 231s 3s/step - loss: 27.4446 - mae: 4.1058 - val_loss: 75.6087 - val_mae: 6.9060
Epoch 80/100
86/86 [==============================] - 231s 3s/step - loss: 27.4110 - mae: 4.0958 - val_loss: 77.8425 - val_mae: 6.9975
Epoch 81/100
86/86 [==============================] - 232s 3s/step - loss: 26.8172 - mae: 4.0548 - val_loss: 72.6249 - val_mae: 6.7165
Epoch 82/100
86/86 [==============================] - 241s 3s/step - loss: 26.7628 - mae: 4.0582 - val_loss: 69.3960 - val_mae: 6.6796
Epoch 83/100
86/86 [==============================] - 231s 3s/step - loss: 26.9962 - mae: 4.0764 - val_loss: 67.8873 - val_mae: 6.5611
Epoch 84/100
86/86 [==============================] - 232s 3s/step - loss: 27.0187 - mae: 4.0571 - val_loss: 72.6889 - val_mae: 6.8893
Epoch 85/100
86/86 [==============================] - 234s 3s/step - loss: 26.7227 - mae: 4.0551 - val_loss: 79.7978 - val_mae: 7.0552
Epoch 86/100
86/86 [==============================] - 233s 3s/step - loss: 26.0133 - mae: 3.9876 - val_loss: 76.6103 - val_mae: 7.0273
Epoch 87/100
86/86 [==============================] - 240s 3s/step - loss: 26.0930 - mae: 4.0111 - val_loss: 79.6986 - val_mae: 6.9929
Epoch 88/100
37/86 [===========>..................] - ETA: 2:06 - loss: 26.6417 - mae: 4.0586"



# Define the regular expression pattern to extract loss and mae values
pattern <- "loss: (\\d+\\.\\d+) - mae: (\\d+\\.\\d+) - val_loss: (\\d+\\.\\d+) - val_mae: (\\d+\\.\\d+)"

# Extract loss and mae values using str_extract_all
extracted_text <- str_extract_all(text, pattern)

# Print the extracted values
print(extracted_text)

#save extracted as a character vector
text <- extracted_text[[1]]

# Define the ontainer
full_eps <- length(text) - 1
loss <- rep(NA, times = full_eps)
mae <- rep(NA, times = full_eps)
val_loss <- rep(NA, times = full_eps)
val_mae <- rep(NA, times = full_eps)
# Use regular expressions to extract text between the start and end strings
for(i in 1:length(text)){
  pattern <- "loss: (\\d+\\.\\d+) - mae:"
  loss[i] <- str_extract_all(text[i], pattern)
  pattern <- "mae: (\\d+\\.\\d+) - val_loss:"
  mae[i] <- str_extract_all(text[i], pattern)
  pattern <- "val_loss: (\\d+\\.\\d+) - val_mae:"
  val_loss[i] <- str_extract_all(text[i], pattern)
  pattern <- "val_mae: (\\d+\\.\\d+)"
  val_mae[i] <- str_extract_all(text[i], pattern)
}
# Print the extracted text
loss
mae
val_loss
val_mae


#shrinnk down to number
for(i in 1:full_eps){
  val_loss[i] <- as.numeric(substr(val_loss[i], 11, nchar(val_loss[i]) - 12))
}

vlv <- rep(NA, times = full_eps)
for(i in 1:length(vlv)){
  vlv[i] <- val_loss[[i]][1]
}


for(i in 1:full_eps){
  loss[i] <- as.numeric(substr(loss[i], 7, nchar(loss[i]) - 6))
}

lv <- rep(NA, times = full_eps)
for(i in 1:length(lv)){
  lv[i] <- loss[[i]][1]
}

for(i in 1:full_eps){
  mae[i] <- as.numeric(substr(mae[i], 6, nchar(mae[i]) - 12))
}

mv <- rep(NA, times = full_eps)
for(i in 1:length(mv)){
  mv[i] <- mae[[i]][1]
}

for(i in 1:full_eps){
  val_mae[i] <- as.numeric(substr(val_mae[i], 10, nchar(val_mae[i])))
}

vmv <- rep(NA, times = full_eps)
for(i in 1:length(vmv)){
  vmv[i] <- val_mae[[i]][1]
}



#put into data frame
df <- data.frame("epoch" = 1:length(lv),"loss" = lv, "mae" = mv, 
                 "val_loss" = vlv, "val_mae" = vmv)

#ggplot
library(ggplot)
library(dplyr)
df |> 
  filter(loss < 5000) |> #axe super high outlier
  ggplot(aes(x = epoch, y = loss)) +
  geom_point(color = "red") + #loss 
  geom_point(aes(y = val_loss), color = "blue") + #val_loss
  theme_minimal() +
  labs(title = "best model, loss")
df |> 
  filter(mae < 50) |> #axe 2 super high outliers
  ggplot(aes(x = epoch, y = mae)) + 
  geom_point(color = "red") + #mae
  geom_point(aes(y = val_mae), color = "blue") + #val_mae 
  theme_minimal() +
  labs(title = "Final Model Evaluation", x = "Epochs", y = "Mean Absolute Error") +
  geom_vline(xintercept = 25, color = "gray", size = 3, alpha = 0.5) +
  theme(axis.title = element_text(size = 16),
        title = element_text(size = 16))

