root <- rprojroot::find_rstudio_root_file()
dataDir <- file.path(root, 'data')

# DiamondColors.csv
download.file(
    'https://query.data.world/s/uVlTdijkCbfac49-3k12tawsmviArp',
    destfile=file.path(dataDir, 'DiamondColors.csv'))

# diamonds.db
# DiamondColors.csv
download.file(
    'https://query.data.world/s/a8Vtk998QI84kJFZQaeZVqO3alb5yW',
    destfile=file.path(dataDir, 'diamonds.db'),
    mode='wb')

# ExcelExample.xlsx
download.file(
    'https://query.data.world/s/5wa6K_X91yfkf-BVpRe2UIabO5A-QB',
    file.path(dataDir, 'ExcelExample.xlsx'),
    mode='wb')

# FavoriteSpots.json
download.file(
    'https://query.data.world/s/033kPeDH9pMdcnhPRIOwhjrw3lpA10',
    destfile=file.path(dataDir, 'FavoriteSpots.json'))

# reaction.txt
download.file(
    'https://query.data.world/s/uDfiLMRxSiB_kQQhEt_LbDGVOcStBR',
    destfile=file.path(dataDir, 'reaction.txt'))

# TomatoFirst.csv
download.file(
    'https://query.data.world/s/o_LrhM_oY5dexXVDbsMNxF2JyyIMrg',
    destfile=file.path(dataDir, 'TomatoFirst.csv'))

# manhattan_Train.csv
download.file(
    'https://query.data.world/s/zGvNwNJbY2470sjsVxYFstm426SEf1',
    destfile=file.path(dataDir, 'manhattan_Train.csv'))
