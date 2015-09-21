function z = twoVectorProduct(v,w)

z = 0;
for i = 1:7
  z = z + v(i) * w(i);
end
