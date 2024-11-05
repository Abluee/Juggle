import {SuiteMarket} from "@/typings/suite.ts";

export interface TemplateMarket {
  id: number | null;
  templateName: string;
  templateRemark: string;
  recommend: boolean;
  suiteList: SuiteMarket[];
}

export interface TemplateMarketInfo {
  id: number | null;
  templateName: string;
  templateRemark: string;
  recommend: boolean;
  priceStatus: number;
  templatePrice: number;
  templateContent: string;
  suiteList: SuiteMarket[];
  noBuySuiteList: SuiteMarket[];
}