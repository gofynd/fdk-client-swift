

import Foundation


public extension PlatformClient.Catalog {
    /*
        Model: AppPriceFactoryProductExportPollJobResponse
        Used By: Catalog
    */

    class AppPriceFactoryProductExportPollJobResponse: Codable {
        
        
        public var id: String?
        
        public var stage: String?
        
        public var isActive: Bool?
        
        public var createdOn: String?
        
        public var totalRecords: Int?
        
        public var successRecords: Int?
        
        public var failedRecords: Int?
        

        public enum CodingKeys: String, CodingKey {
            
            case id = "id"
            
            case stage = "stage"
            
            case isActive = "is_active"
            
            case createdOn = "created_on"
            
            case totalRecords = "total_records"
            
            case successRecords = "success_records"
            
            case failedRecords = "failed_records"
            
        }

        public init(createdOn: String? = nil, failedRecords: Int? = nil, id: String? = nil, isActive: Bool? = nil, stage: String? = nil, successRecords: Int? = nil, totalRecords: Int? = nil) {
            
            self.id = id
            
            self.stage = stage
            
            self.isActive = isActive
            
            self.createdOn = createdOn
            
            self.totalRecords = totalRecords
            
            self.successRecords = successRecords
            
            self.failedRecords = failedRecords
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    id = try container.decode(String.self, forKey: .id)
                
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
                
            
            
                do {
                    isActive = try container.decode(Bool.self, forKey: .isActive)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    createdOn = try container.decode(String.self, forKey: .createdOn)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
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
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(id, forKey: .id)
            
            
            
            
            try? container.encodeIfPresent(stage, forKey: .stage)
            
            
            
            
            try? container.encodeIfPresent(isActive, forKey: .isActive)
            
            
            
            
            try? container.encodeIfPresent(createdOn, forKey: .createdOn)
            
            
            
            
            try? container.encodeIfPresent(totalRecords, forKey: .totalRecords)
            
            
            
            
            try? container.encodeIfPresent(successRecords, forKey: .successRecords)
            
            
            
            
            try? container.encodeIfPresent(failedRecords, forKey: .failedRecords)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Catalog {
    /*
        Model: AppPriceFactoryProductExportPollJobResponse
        Used By: Catalog
    */

    class AppPriceFactoryProductExportPollJobResponse: Codable {
        
        
        public var id: String?
        
        public var stage: String?
        
        public var isActive: Bool?
        
        public var createdOn: String?
        
        public var totalRecords: Int?
        
        public var successRecords: Int?
        
        public var failedRecords: Int?
        

        public enum CodingKeys: String, CodingKey {
            
            case id = "id"
            
            case stage = "stage"
            
            case isActive = "is_active"
            
            case createdOn = "created_on"
            
            case totalRecords = "total_records"
            
            case successRecords = "success_records"
            
            case failedRecords = "failed_records"
            
        }

        public init(createdOn: String? = nil, failedRecords: Int? = nil, id: String? = nil, isActive: Bool? = nil, stage: String? = nil, successRecords: Int? = nil, totalRecords: Int? = nil) {
            
            self.id = id
            
            self.stage = stage
            
            self.isActive = isActive
            
            self.createdOn = createdOn
            
            self.totalRecords = totalRecords
            
            self.successRecords = successRecords
            
            self.failedRecords = failedRecords
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    id = try container.decode(String.self, forKey: .id)
                
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
                
            
            
                do {
                    isActive = try container.decode(Bool.self, forKey: .isActive)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    createdOn = try container.decode(String.self, forKey: .createdOn)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
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
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(id, forKey: .id)
            
            
            
            
            try? container.encodeIfPresent(stage, forKey: .stage)
            
            
            
            
            try? container.encodeIfPresent(isActive, forKey: .isActive)
            
            
            
            
            try? container.encodeIfPresent(createdOn, forKey: .createdOn)
            
            
            
            
            try? container.encodeIfPresent(totalRecords, forKey: .totalRecords)
            
            
            
            
            try? container.encodeIfPresent(successRecords, forKey: .successRecords)
            
            
            
            
            try? container.encodeIfPresent(failedRecords, forKey: .failedRecords)
            
            
        }
        
    }
}


