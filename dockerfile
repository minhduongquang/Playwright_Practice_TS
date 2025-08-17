# Sử dụng Playwright base image
FROM mcr.microsoft.com/playwright/node:lts
# Thiết lập thư mục làm việc
WORKDIR /usr/src/app
# Sao chép package.json và package-lock.json để cài đặt dependencies
COPY package*.json ./
# Cài đặt dependencies
RUN npm install
# Sao chép toàn bộ mã nguồn
COPY . .
# Lệnh mặc định khi chạy container
CMD ["npx", "playwright", "test"]