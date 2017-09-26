function ff= fz1(z,chi)
a = (1 - sqrt(chi/(16 + chi)))/2;
ff= ((z - a).^a).*(z - (a-1)).^(1 - a);
end 
