import { useEffect, useState, RefObject } from "react";

const useDetectClose = (elem: RefObject<HTMLElement>, initialState: boolean): [boolean, React.Dispatch<React.SetStateAction<boolean>>] => {
  const [isOpen, setIsOpen] = useState(initialState);

  useEffect(() => {
    const onClick = (e: MouseEvent) => {
      if (elem.current !== null && !elem.current.contains(e.target as Node)) {
        setIsOpen(false);
      }
    };

    if (isOpen) {
      window.addEventListener("click", onClick);
    }

    return () => {
      window.removeEventListener("click", onClick);
    };
  }, [isOpen, elem]);

  return [isOpen, setIsOpen];
};

export default useDetectClose;