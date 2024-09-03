using {com.logali as logali} from '../db/schema';

service ServiceCatalog {

    entity Order as projection on logali.zorden_fs;
    entity Items as projection on logali.zitems_fs;

}
