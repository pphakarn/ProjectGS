// tailwind.config.js
module.exports = {
  content: [
    './index.html', // หรือเส้นทางไฟล์ที่ใช้ tailwind class
    './src/**/*.{js,jsx,ts,tsx}', // รวมไฟล์ทุกประเภทที่ใช้ tailwind class
  ],
  theme: {
    extend: {},
  },
  plugins: [],
};
