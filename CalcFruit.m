function [sign, percent] = CalcFruit(ImagePixel, MaskPixel, ImageNum)
    if ((ImagePixel==0)||(MaskPixel==0)||(MaskPixel>ImagePixel))
        sign = false;
        percent = 0;
    else
        percent = (MaskPixel * 100)/ImagePixel;
        switch ImageNum
            case 1
                if(percent >= 90)
                    sign = true;
                else
                    sign = false;
                end
            case 2
                if(percent >= 75)
                    sign = true;
                else
                    sign = false;
                end
            case 3
                if(percent >= 85)
                    sign = true;
                else
                    sign = false;
                end
            case 4
                if(percent >= 85)
                    sign = true;
                else
                    sign = false;
                end
        end
    end
end
