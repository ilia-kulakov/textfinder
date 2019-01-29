package edu.aem.training.textfinder;

import java.util.List;

/**
 * A simple service interface
 */
public interface TextFinderService {
    
    /**
     * @return the name of the underlying JCR repository implementation
     */

    String[] find(String[] findWhatList, String[] findWhereList, String queryApi);

}