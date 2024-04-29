package net.somta.juggle.console.application.service.system.impl;

import net.somta.juggle.console.application.assembler.system.IDataSourceAssembler;
import net.somta.juggle.console.application.service.system.IDataSourceService;
import net.somta.juggle.console.domain.system.datasource.DataSourceAO;
import net.somta.juggle.console.domain.system.datasource.repository.IDataSourceRepository;
import net.somta.juggle.core.executor.data.IDataSourceManager;
import net.somta.juggle.core.model.DataSource;
import org.springframework.stereotype.Service;

import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

@Service
public class DataSourceManager implements IDataSourceManager {

    private final IDataSourceRepository dataSourceRepository;
    private Map<String, DataSource> dataSourceCache;

    public DataSourceManager(IDataSourceRepository dataSourceRepository) {
        dataSourceCache = new ConcurrentHashMap<>();
        this.dataSourceRepository = dataSourceRepository;
    }

    @Override
    public void addDataSourceToCache(DataSource dataSource) {
        dataSourceCache.put(dataSource.getId().toString(), dataSource);
    }

    @Override
    public void deleteDataSourceFromCache(Long dataSourceId) {
        dataSourceCache.remove(dataSourceId);
    }

    @Override
    public DataSource getDataSource(Long dataSourceId) {
        if (dataSourceCache.containsKey(dataSourceId)) {
            return dataSourceCache.get(dataSourceId);
        }
        DataSourceAO dataSourceAo = dataSourceRepository.queryDataSource(dataSourceId);
        DataSource dataSource = IDataSourceAssembler.IMPL.aoToModel(dataSourceAo);
        return dataSource;
    }
}
