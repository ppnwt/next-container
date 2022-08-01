import dynamic from "next/dynamic";
import { useState } from "react";

const Home = dynamic(() => import("../features/Home"));
const Modal = dynamic(() => import("../features/Modal"));

export default function Index() {
  const [open, setOpen] = useState(false);

  const handleClick = () => {
    setOpen(true);
  };

  return !open ? <Home onClick={handleClick} /> : <Modal />;
}
