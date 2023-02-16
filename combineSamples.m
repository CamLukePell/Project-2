function [combined] = combineSamples(sample1,sample2)
    combined = sample1+sample2;
%     for i = 1:length(sample1)
%         if((sample1(i) + sample2(i))>1)
%             combined(i) = 1;
%             break;
%         end
%         if((sample1(i) + sample2(i))<-1)
%             combined(i) = -1;
%             break;
%         end
%         combined = sample1 + sample2;
%     end
end

