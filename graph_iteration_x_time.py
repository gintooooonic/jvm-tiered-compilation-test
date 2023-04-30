import matplotlib.pyplot as plt

iterations = []
times = []

# 파일 읽어 배열에 저장

f = open("iteration_x_time.txt", "rt")

while True:
    line = f.readline()
    if not line: break

    (iteration, time) = tuple(map(int, line.strip().split(" ")))
    iterations.append(iteration)
    times.append(time)

f.close()

# 그래프 그리기

plt.plot(iterations, times)
plt.show()