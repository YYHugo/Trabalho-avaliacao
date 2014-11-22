
amostra = {'tiff_vert\grayscale\', 'tiff_hor\grayscale\', 'tiff_grande\grayscale\'};
resdir = {'results\qual100\decomppng\', 'results\qual100\decompjpg\', 'results\qual50\decomppng\', 'results\qual50\decompjpg\'};
iname = {'001', '002' ,'003' '004' ,'005' ,'006' ,'007' ,'008' ,'009' ,'010'};

for i = 1:3
    for j = 1:4
        snr = [];
        mse = [];
        
        for k = 1:10
        
            % imagem original de referencia F
            F = imread( strcat( amostra{i}, iname{k}, '.tif' ) );
            % imagem resultante apos operacoes
            f = imread( strcat( amostra{i}, resdir{j}, iname{k}, '.tif.tif' ) );

            %imhist(F)

            % image(F)
            % f = imhistmatch(F, ref);
            % imsave
            % figure(2);
            % image(f)

            %hist(reshape(F,[],3),1:max(F(:))); 
            %colormap([1 0 0; 0 1 0; 0 0 1]);

            %figure(4)
            squaredError = sum((F(:) - f(:)).^2);

            snr = [ snr -10*log10( sum((F(:) - f(:)).^2) / sum(F(:).^2) ) ];
            mse = [ mse 1/(size(F, 1)*size(F, 2)) * squaredError ];

        end
        save( strcat( amostra{i}, resdir{j}, 'workspace.mat' ), 'snr', 'mse' );
    end
end
