
library(stringr)

text <- "Epoch 1/100
86/86 [==============================] - 26s 201ms/step - loss: 208.0271 - mae: 11.8042 - val_loss: 150.3383 - val_mae: 9.7535
Epoch 2/100
86/86 [==============================] - 8s 91ms/step - loss: 157.2282 - mae: 10.3928 - val_loss: 117.6591 - val_mae: 8.7745
Epoch 3/100
86/86 [==============================] - 8s 89ms/step - loss: 136.0694 - mae: 9.8021 - val_loss: 103.9973 - val_mae: 8.4257
Epoch 4/100
86/86 [==============================] - 9s 98ms/step - loss: 125.2685 - mae: 9.4694 - val_loss: 93.1568 - val_mae: 7.9261
Epoch 5/100
86/86 [==============================] - 7s 81ms/step - loss: 118.3386 - mae: 9.1925 - val_loss: 87.2240 - val_mae: 7.6559
Epoch 6/100
86/86 [==============================] - 9s 99ms/step - loss: 113.4561 - mae: 8.9350 - val_loss: 91.6814 - val_mae: 7.7875
Epoch 7/100
86/86 [==============================] - 8s 95ms/step - loss: 109.2933 - mae: 8.6783 - val_loss: 90.7589 - val_mae: 7.7463
Epoch 8/100
86/86 [==============================] - 7s 84ms/step - loss: 106.6591 - mae: 8.5117 - val_loss: 88.9316 - val_mae: 7.6699
Epoch 9/100
86/86 [==============================] - 7s 84ms/step - loss: 104.8172 - mae: 8.4007 - val_loss: 87.9586 - val_mae: 7.6300
Epoch 10/100
86/86 [==============================] - 9s 99ms/step - loss: 103.3175 - mae: 8.3102 - val_loss: 88.4333 - val_mae: 7.6442
Epoch 11/100
86/86 [==============================] - 9s 98ms/step - loss: 101.9981 - mae: 8.2491 - val_loss: 88.2106 - val_mae: 7.6203
Epoch 12/100
86/86 [==============================] - 8s 88ms/step - loss: 100.5342 - mae: 8.1707 - val_loss: 88.7226 - val_mae: 7.6160
Epoch 13/100
86/86 [==============================] - 13s 138ms/step - loss: 99.0161 - mae: 8.0988 - val_loss: 89.0785 - val_mae: 7.6168
Epoch 14/100
86/86 [==============================] - 8s 90ms/step - loss: 97.6046 - mae: 8.0150 - val_loss: 87.8985 - val_mae: 7.5814
Epoch 15/100
86/86 [==============================] - 9s 98ms/step - loss: 95.9559 - mae: 7.9369 - val_loss: 83.3047 - val_mae: 7.3933
Epoch 16/100
86/86 [==============================] - 10s 108ms/step - loss: 94.5571 - mae: 7.8651 - val_loss: 86.8269 - val_mae: 7.5041
Epoch 17/100
86/86 [==============================] - 7s 83ms/step - loss: 93.2039 - mae: 7.7970 - val_loss: 82.5833 - val_mae: 7.3518
Epoch 18/100
86/86 [==============================] - 10s 108ms/step - loss: 91.8660 - mae: 7.7382 - val_loss: 84.7173 - val_mae: 7.4173
Epoch 19/100
86/86 [==============================] - 9s 97ms/step - loss: 90.7549 - mae: 7.6866 - val_loss: 84.7878 - val_mae: 7.4079
Epoch 20/100
86/86 [==============================] - 8s 89ms/step - loss: 89.6029 - mae: 7.6235 - val_loss: 84.2780 - val_mae: 7.3833
Epoch 21/100
86/86 [==============================] - 7s 82ms/step - loss: 88.4478 - mae: 7.5706 - val_loss: 83.5895 - val_mae: 7.3567
Epoch 22/100
86/86 [==============================] - 8s 86ms/step - loss: 87.2700 - mae: 7.5210 - val_loss: 83.0962 - val_mae: 7.3477
Epoch 23/100
86/86 [==============================] - 10s 106ms/step - loss: 86.2165 - mae: 7.4663 - val_loss: 78.9842 - val_mae: 7.2400
Epoch 24/100
86/86 [==============================] - 9s 102ms/step - loss: 85.0508 - mae: 7.4068 - val_loss: 81.3901 - val_mae: 7.3544
Epoch 25/100
86/86 [==============================] - 8s 86ms/step - loss: 83.5995 - mae: 7.3384 - val_loss: 76.4824 - val_mae: 7.2041
Epoch 26/100
86/86 [==============================] - 8s 91ms/step - loss: 81.4283 - mae: 7.2190 - val_loss: 73.1311 - val_mae: 7.0549
Epoch 27/100
86/86 [==============================] - 9s 98ms/step - loss: 80.7425 - mae: 7.1820 - val_loss: 74.0707 - val_mae: 7.0753
Epoch 28/100
86/86 [==============================] - 8s 94ms/step - loss: 79.6804 - mae: 7.1114 - val_loss: 72.4827 - val_mae: 6.9964
Epoch 29/100
86/86 [==============================] - 7s 81ms/step - loss: 77.8264 - mae: 7.0230 - val_loss: 76.6038 - val_mae: 7.1229
Epoch 30/100
86/86 [==============================] - 9s 99ms/step - loss: 76.0926 - mae: 6.9212 - val_loss: 75.2562 - val_mae: 7.0440
Epoch 31/100
86/86 [==============================] - 9s 98ms/step - loss: 73.7806 - mae: 6.8054 - val_loss: 75.8225 - val_mae: 7.0489
Epoch 32/100
86/86 [==============================] - 8s 93ms/step - loss: 71.8096 - mae: 6.7004 - val_loss: 77.4922 - val_mae: 7.1549
Epoch 33/100
86/86 [==============================] - 8s 91ms/step - loss: 70.7382 - mae: 6.6381 - val_loss: 75.9147 - val_mae: 7.0467
Epoch 34/100
86/86 [==============================] - 10s 118ms/step - loss: 69.3083 - mae: 6.5633 - val_loss: 78.3029 - val_mae: 7.1628
Epoch 35/100
86/86 [==============================] - 9s 98ms/step - loss: 68.1762 - mae: 6.5060 - val_loss: 82.6750 - val_mae: 7.3914
Epoch 36/100
86/86 [==============================] - 8s 87ms/step - loss: 66.9196 - mae: 6.4513 - val_loss: 85.1443 - val_mae: 7.5147
Epoch 37/100
86/86 [==============================] - 8s 84ms/step - loss: 65.8427 - mae: 6.4125 - val_loss: 89.6811 - val_mae: 7.6505
Epoch 38/100
86/86 [==============================] - 8s 91ms/step - loss: 63.9445 - mae: 6.3310 - val_loss: 87.1717 - val_mae: 7.3723
Epoch 39/100
86/86 [==============================] - 9s 98ms/step - loss: 62.1985 - mae: 6.2515 - val_loss: 90.1493 - val_mae: 7.4891
Epoch 40/100
86/86 [==============================] - 9s 103ms/step - loss: 61.2948 - mae: 6.2025 - val_loss: 91.2293 - val_mae: 7.5623
Epoch 41/100
86/86 [==============================] - 8s 92ms/step - loss: 60.2970 - mae: 6.1408 - val_loss: 95.0623 - val_mae: 7.7158
Epoch 42/100
86/86 [==============================] - 8s 92ms/step - loss: 59.1321 - mae: 6.0841 - val_loss: 98.7885 - val_mae: 7.8955
Epoch 43/100
86/86 [==============================] - 10s 109ms/step - loss: 58.4266 - mae: 6.0478 - val_loss: 102.6536 - val_mae: 8.0524
Epoch 44/100
86/86 [==============================] - 8s 88ms/step - loss: 58.2606 - mae: 6.0234 - val_loss: 104.8946 - val_mae: 8.1662
Epoch 45/100
86/86 [==============================] - 8s 87ms/step - loss: 57.9794 - mae: 6.0074 - val_loss: 103.0814 - val_mae: 8.0575
Epoch 46/100
86/86 [==============================] - 9s 100ms/step - loss: 55.9671 - mae: 5.9200 - val_loss: 110.1358 - val_mae: 8.4401
Epoch 47/100
86/86 [==============================] - 9s 100ms/step - loss: 55.4613 - mae: 5.8896 - val_loss: 102.8773 - val_mae: 8.0103
Epoch 48/100
86/86 [==============================] - 8s 91ms/step - loss: 54.7808 - mae: 5.8420 - val_loss: 117.3011 - val_mae: 8.6735
Epoch 49/100
86/86 [==============================] - 8s 90ms/step - loss: 53.5182 - mae: 5.7725 - val_loss: 109.8281 - val_mae: 8.3398
Epoch 50/100
86/86 [==============================] - 9s 98ms/step - loss: 53.3122 - mae: 5.7533 - val_loss: 117.3931 - val_mae: 8.7213
Epoch 51/100
86/86 [==============================] - 9s 100ms/step - loss: 51.7072 - mae: 5.6728 - val_loss: 100.6855 - val_mae: 7.9252
Epoch 52/100
86/86 [==============================] - 8s 85ms/step - loss: 51.6088 - mae: 5.6487 - val_loss: 106.9192 - val_mae: 8.1619
Epoch 53/100
86/86 [==============================] - 10s 117ms/step - loss: 51.0014 - mae: 5.6273 - val_loss: 117.0276 - val_mae: 8.6337
Epoch 54/100
86/86 [==============================] - 12s 132ms/step - loss: 50.0901 - mae: 5.5828 - val_loss: 114.1433 - val_mae: 8.5094
Epoch 55/100
86/86 [==============================] - 8s 86ms/step - loss: 49.6372 - mae: 5.5442 - val_loss: 116.3110 - val_mae: 8.5677
Epoch 56/100
86/86 [==============================] - 9s 95ms/step - loss: 50.4184 - mae: 5.5811 - val_loss: 114.2184 - val_mae: 8.5069
Epoch 57/100
86/86 [==============================] - 9s 98ms/step - loss: 49.2143 - mae: 5.5081 - val_loss: 140.0013 - val_mae: 9.5031
Epoch 58/100
86/86 [==============================] - 9s 100ms/step - loss: 48.6837 - mae: 5.4843 - val_loss: 114.3201 - val_mae: 8.4626
Epoch 59/100
86/86 [==============================] - 8s 92ms/step - loss: 48.6446 - mae: 5.4761 - val_loss: 114.7570 - val_mae: 8.5497
Epoch 60/100
86/86 [==============================] - 9s 93ms/step - loss: 47.8494 - mae: 5.4316 - val_loss: 134.8840 - val_mae: 9.3074
Epoch 61/100
86/86 [==============================] - 9s 103ms/step - loss: 49.3305 - mae: 5.4883 - val_loss: 117.7634 - val_mae: 8.6253
Epoch 62/100
86/86 [==============================] - 10s 116ms/step - loss: 47.1195 - mae: 5.3903 - val_loss: 116.6471 - val_mae: 8.5948
Epoch 63/100
86/86 [==============================] - 8s 87ms/step - loss: 46.8725 - mae: 5.3763 - val_loss: 135.4712 - val_mae: 9.3217
Epoch 64/100
86/86 [==============================] - 9s 99ms/step - loss: 46.3009 - mae: 5.3495 - val_loss: 107.9979 - val_mae: 8.1342
Epoch 65/100
86/86 [==============================] - 9s 99ms/step - loss: 49.9849 - mae: 5.4699 - val_loss: 149.7030 - val_mae: 9.8212
Epoch 66/100
86/86 [==============================] - 9s 99ms/step - loss: 46.6418 - mae: 5.3445 - val_loss: 147.9907 - val_mae: 9.7632
Epoch 67/100
86/86 [==============================] - 8s 87ms/step - loss: 46.1740 - mae: 5.3279 - val_loss: 125.0613 - val_mae: 8.8603
Epoch 68/100
86/86 [==============================] - 9s 97ms/step - loss: 45.7690 - mae: 5.3019 - val_loss: 151.5414 - val_mae: 9.8704
Epoch 69/100
86/86 [==============================] - 8s 94ms/step - loss: 45.4986 - mae: 5.2899 - val_loss: 141.5808 - val_mae: 9.4642
Epoch 70/100
86/86 [==============================] - 8s 88ms/step - loss: 45.4643 - mae: 5.2697 - val_loss: 136.7007 - val_mae: 9.3255
Epoch 71/100
86/86 [==============================] - 8s 85ms/step - loss: 45.3157 - mae: 5.2598 - val_loss: 128.8851 - val_mae: 9.0508
Epoch 72/100
86/86 [==============================] - 9s 97ms/step - loss: 45.0028 - mae: 5.2493 - val_loss: 151.3442 - val_mae: 9.8021
Epoch 73/100
86/86 [==============================] - 8s 93ms/step - loss: 45.0697 - mae: 5.2394 - val_loss: 145.5827 - val_mae: 9.6113
Epoch 74/100
86/86 [==============================] - 8s 89ms/step - loss: 44.4902 - mae: 5.2224 - val_loss: 135.2291 - val_mae: 9.2062
Epoch 75/100
86/86 [==============================] - 8s 86ms/step - loss: 43.9125 - mae: 5.1909 - val_loss: 110.6102 - val_mae: 8.3426
Epoch 76/100
86/86 [==============================] - 9s 97ms/step - loss: 44.0111 - mae: 5.1864 - val_loss: 126.3190 - val_mae: 8.9735
Epoch 77/100
86/86 [==============================] - 8s 95ms/step - loss: 44.1370 - mae: 5.1846 - val_loss: 164.2546 - val_mae: 10.3093
Epoch 78/100
86/86 [==============================] - 8s 88ms/step - loss: 43.5935 - mae: 5.1537 - val_loss: 144.2043 - val_mae: 9.5664
Epoch 79/100
86/86 [==============================] - 9s 98ms/step - loss: 44.0434 - mae: 5.1636 - val_loss: 124.7312 - val_mae: 8.7772
Epoch 80/100
86/86 [==============================] - 8s 95ms/step - loss: 42.8164 - mae: 5.1300 - val_loss: 144.2519 - val_mae: 9.5522
Epoch 81/100
86/86 [==============================] - 8s 85ms/step - loss: 42.8085 - mae: 5.1117 - val_loss: 143.1846 - val_mae: 9.4753
Epoch 82/100
86/86 [==============================] - 9s 102ms/step - loss: 42.8359 - mae: 5.1128 - val_loss: 141.7422 - val_mae: 9.4098
Epoch 83/100
86/86 [==============================] - 9s 98ms/step - loss: 42.0189 - mae: 5.0824 - val_loss: 146.1618 - val_mae: 9.5815
Epoch 84/100
86/86 [==============================] - 9s 96ms/step - loss: 42.0834 - mae: 5.0720 - val_loss: 123.0854 - val_mae: 8.7013
Epoch 85/100
86/86 [==============================] - 8s 85ms/step - loss: 41.9242 - mae: 5.0696 - val_loss: 134.3657 - val_mae: 9.1473
Epoch 86/100
86/86 [==============================] - 8s 88ms/step - loss: 42.0699 - mae: 5.0676 - val_loss: 130.1969 - val_mae: 8.9778
Epoch 87/100
86/86 [==============================] - 9s 98ms/step - loss: 42.2100 - mae: 5.0688 - val_loss: 143.2259 - val_mae: 9.4260
Epoch 88/100
86/86 [==============================] - 9s 96ms/step - loss: 41.7754 - mae: 5.0567 - val_loss: 133.2908 - val_mae: 9.1102
Epoch 89/100
86/86 [==============================] - 8s 84ms/step - loss: 41.8726 - mae: 5.0587 - val_loss: 126.5105 - val_mae: 8.8530
Epoch 90/100
86/86 [==============================] - 9s 104ms/step - loss: 41.4052 - mae: 5.0484 - val_loss: 136.8535 - val_mae: 9.2009
Epoch 91/100
86/86 [==============================] - 9s 99ms/step - loss: 40.9455 - mae: 5.0159 - val_loss: 154.1382 - val_mae: 9.7748
Epoch 92/100
86/86 [==============================] - 8s 92ms/step - loss: 40.9866 - mae: 5.0050 - val_loss: 137.2657 - val_mae: 9.2067
Epoch 93/100
86/86 [==============================] - 8s 86ms/step - loss: 40.8498 - mae: 4.9976 - val_loss: 139.1160 - val_mae: 9.2175
Epoch 94/100
86/86 [==============================] - 8s 89ms/step - loss: 40.7191 - mae: 4.9965 - val_loss: 154.0509 - val_mae: 9.7421
Epoch 95/100
86/86 [==============================] - 8s 91ms/step - loss: 40.5622 - mae: 4.9787 - val_loss: 142.4876 - val_mae: 9.4319
Epoch 96/100
86/86 [==============================] - 9s 98ms/step - loss: 40.3259 - mae: 4.9689 - val_loss: 141.2492 - val_mae: 9.3120
Epoch 97/100
86/86 [==============================] - 9s 97ms/step - loss: 40.1429 - mae: 4.9598 - val_loss: 152.0275 - val_mae: 9.6937
Epoch 98/100
86/86 [==============================] - 8s 88ms/step - loss: 40.0728 - mae: 4.9474 - val_loss: 163.6448 - val_mae: 10.0723
Epoch 99/100
86/86 [==============================] - 8s 85ms/step - loss: 39.9051 - mae: 4.9474 - val_loss: 164.2901 - val_mae: 10.1439
Epoch 100/100
86/86 [==============================] - 8s 88ms/step - loss: 39.7564 - mae: 4.9301 - val_loss: 153.8836 - val_mae: 9.7232"

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
  labs(title = "initial model, loss")
df |> 
  filter(mae < 50) |> #axe 2 super high outliers
  ggplot(aes(x = epoch, y = mae)) + 
  geom_point(color = "red") + #mae
  geom_point(aes(y = val_mae), color = "blue") + #val_mae 
  theme_minimal() +
  labs(title = "Initial Model Evaluation", x = "Epochs", y = "Mean Absolute Error") +
  geom_vline(xintercept = 26, color = "gray", size = 3, alpha = 0.5) +
  theme(axis.title = element_text(size = 16),
        title = element_text(size = 16)) 


