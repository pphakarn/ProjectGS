import React, { useState, useEffect } from "react";
import { Swiper, SwiperSlide } from "swiper/react";
import axios from "axios";

// Import Swiper styles
import "swiper/css";
import "swiper/css/pagination";
import 'swiper/css/navigation';
// import required modules
import { Pagination, Autoplay, Navigation } from "swiper/modules";



const ContentCarousel = () => {
  // Javascript
  const [data, setData] = useState([]);
  useEffect(() => {
    hdlGetImage();
  }, []);

  const hdlGetImage = () => {
    // code
    axios
      .get("https://picsum.photos/v2/list?page=1&limit=20")
      .then((res) => setData(res.data))
      .catch((error) => console.log(error));
  };

  return (
    <>
      <Swiper
        pagination={{
          dynamicBullets: true,
        }}
        modules={[Pagination, Autoplay]}
        className="mySwiper"
        style={{ width: '800px', height: '800px' }} // กำหนดขนาดของ Swiper
      >
        {/* Slide 1 */}
        <SwiperSlide>
          <img
            src="https://down-th.img.susercontent.com/file/th-11134207-7r98u-lo281flm0qi8a2.webp"
            alt="Slide 2"
            className="w-full h-full object-contain rounded-md"
          />
        </SwiperSlide>

        {/* Slide 2 */}
        <SwiperSlide>
          <img
            src="https://www.thaibynature.com/export/image/cache/catalog/wholesale/health-beauty/facial-serum-essence/mizumi-acne-treatment/mizumi-peptide-acne-gel-600x400.jpg"
            alt="Slide 1"
            className="w-full h-full object-contain rounded-md" // ปรับให้ภาพไม่ถูกตัด
          />
        </SwiperSlide>

        {/* Slide 3 */}
        <SwiperSlide>
          <img
            src="https://down-th.img.susercontent.com/file/th-11134207-7rask-m1u2pj94d2479b.webp"
            alt="Slide 3"
            className="w-full h-full object-contain rounded-md"
          />
        </SwiperSlide>

        {/* Slide 4 */}
        <SwiperSlide>
          <img
            src="https://down-th.img.susercontent.com/file/cn-11134207-7r98o-lv4iqggzblas1e.webp"
            alt="Slide 4"
            className="w-full h-full object-contain rounded-md"
          />
        </SwiperSlide>
      </Swiper>
    </>
  );
}
export default ContentCarousel;