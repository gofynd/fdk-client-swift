

import Foundation


public extension PlatformClient.Catalog {
    /*
        Model: CreatePriceFactoryProductResponseSchema
        Used By: Catalog
    */

    class CreatePriceFactoryProductResponseSchema: Codable {
        
        
        public var totalRecords: Int?
        
        public var successRecords: Int?
        
        public var failedRecords: Int?
        
        public var failedRecordsData: [FailedRecordsData]?
        
        public var stage: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case totalRecords = "total_records"
            
            case successRecords = "success_records"
            
            case failedRecords = "failed_records"
            
            case failedRecordsData = "failed_records_data"
            
            case stage = "stage"
            
        }

        public init(failedRecords: Int? = nil, failedRecordsData: [FailedRecordsData]? = nil, stage: String? = nil, successRecords: Int? = nil, totalRecords: Int? = nil) {
            
            self.totalRecords = totalRecords
            
            self.successRecords = successRecords
            
            self.failedRecords = failedRecords
            
            self.failedRecordsData = failedRecordsData
            
            self.stage = stage
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    totalRecords = try container.decode(Int.self, forKey: .totalRecords)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    successRecords = try container.decode(Int.self, forKey: .successRecords)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    failedRecords = try container.decode(Int.self, forKey: .failedRecords)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    failedRecordsData = try container.decode([FailedRecordsData].self, forKey: .failedRecordsData)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    stage = try container.decode(String.self, forKey: .stage)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(totalRecords, forKey: .totalRecords)
            
            
            
            
            try? container.encodeIfPresent(successRecords, forKey: .successRecords)
            
            
            
            
            try? container.encodeIfPresent(failedRecords, forKey: .failedRecords)
            
            
            
            
            try? container.encodeIfPresent(failedRecordsData, forKey: .failedRecordsData)
            
            
            
            
            try? container.encodeIfPresent(stage, forKey: .stage)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Catalog {
    /*
        Model: CreatePriceFactoryProductResponseSchema
        Used By: Catalog
    */

    class CreatePriceFactoryProductResponseSchema: Codable {
        
        
        public var totalRecords: Int?
        
        public var successRecords: Int?
        
        public var failedRecords: Int?
        
        public var failedRecordsData: [FailedRecordsData]?
        
        public var stage: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case totalRecords = "total_records"
            
            case successRecords = "success_records"
            
            case failedRecords = "failed_records"
            
            case failedRecordsData = "failed_records_data"
            
            case stage = "stage"
            
        }

        public init(failedRecords: Int? = nil, failedRecordsData: [FailedRecordsData]? = nil, stage: String? = nil, successRecords: Int? = nil, totalRecords: Int? = nil) {
            
            self.totalRecords = totalRecords
            
            self.successRecords = successRecords
            
            self.failedRecords = failedRecords
            
            self.failedRecordsData = failedRecordsData
            
            self.stage = stage
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    totalRecords = try container.decode(Int.self, forKey: .totalRecords)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    successRecords = try container.decode(Int.self, forKey: .successRecords)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    failedRecords = try container.decode(Int.self, forKey: .failedRecords)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    failedRecordsData = try container.decode([FailedRecordsData].self, forKey: .failedRecordsData)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    stage = try container.decode(String.self, forKey: .stage)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(totalRecords, forKey: .totalRecords)
            
            
            
            
            try? container.encodeIfPresent(successRecords, forKey: .successRecords)
            
            
            
            
            try? container.encodeIfPresent(failedRecords, forKey: .failedRecords)
            
            
            
            
            try? container.encodeIfPresent(failedRecordsData, forKey: .failedRecordsData)
            
            
            
            
            try? container.encodeIfPresent(stage, forKey: .stage)
            
            
        }
        
    }
}


