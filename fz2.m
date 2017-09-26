function ff= fz2(z,chi)
a = (1 - sqrt(chi/(16 + chi)))/2;
ff= ((z + a).^a).*(z - (1 - a)).^(1 - a);
end
