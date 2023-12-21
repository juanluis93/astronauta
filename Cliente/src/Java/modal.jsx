import { useSpring, animated, useTransition } from "@react-spring/web";
import './Modal.css';

const Modal = ({ children, isOpen, onClose }) => {
    const modaltransition = useTransition(isOpen, {
        from: { opacity: 0 },
        enter: { opacity: 1 },
        leave: { opacity: 1 },
        config: {
            duration: 300
        }
    })
    const springs = useSpring({
        opacity: isOpen ? 1 : 0,
        transform: isOpen ? "translateY(0%)" : "translateY(-100%)",
        config: {
            duration: 300
        }
    });

    return modaltransition((styles, isOpen) =>
        isOpen && (
            <animated.div style={styles} className="react-modal-overlay" onClick={onClose}>
                <animated.div style={springs} className="react-modal-wrapper" onClick={(e) => e.stopPropagation()}>
                    <div className="react-modal-content">
                        {children}
                        <button type="button" onClick={onClose}>
                            Close
                        </button>
                    </div>
                </animated.div>
            </animated.div>
        )
    );
};

export default Modal;