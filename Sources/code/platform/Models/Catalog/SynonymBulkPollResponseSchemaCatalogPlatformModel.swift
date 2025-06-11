

import Foundation


public extension PlatformClient.Catalog {
    /*
        Model: SynonymBulkPollResponseSchema
        Used By: Catalog
    */

    class SynonymBulkPollResponseSchema: Codable {
        
        
        public var totalRecords: Int?
        
        public var successRecords: Int?
        
        public var failedRecords: Int?
        
        public var stage: String?
        
        public var errorUrl: String?
        
        public var message: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case totalRecords = "total_records"
            
            case successRecords = "success_records"
            
            case failedRecords = "failed_records"
            
            case stage = "stage"
            
            case errorUrl = "error_url"
            
            case message = "message"
            
        }

        public init(errorUrl: String? = nil, failedRecords: Int? = nil, message: String? = nil, stage: String? = nil, successRecords: Int? = nil, totalRecords: Int? = nil) {
            
            self.totalRecords = totalRecords
            
            self.successRecords = successRecords
            
            self.failedRecords = failedRecords
            
            self.stage = stage
            
            self.errorUrl = errorUrl
            
            self.message = message
            
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
                    stage = try container.decode(String.self, forKey: .stage)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    errorUrl = try container.decode(String.self, forKey: .errorUrl)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    message = try container.decode(String.self, forKey: .message)
                
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
            
            
            
            
            try? container.encodeIfPresent(stage, forKey: .stage)
            
            
            
            
            try? container.encodeIfPresent(errorUrl, forKey: .errorUrl)
            
            
            
            
            try? container.encodeIfPresent(message, forKey: .message)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Catalog {
    /*
        Model: SynonymBulkPollResponseSchema
        Used By: Catalog
    */

    class SynonymBulkPollResponseSchema: Codable {
        
        
        public var totalRecords: Int?
        
        public var successRecords: Int?
        
        public var failedRecords: Int?
        
        public var stage: String?
        
        public var errorUrl: String?
        
        public var message: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case totalRecords = "total_records"
            
            case successRecords = "success_records"
            
            case failedRecords = "failed_records"
            
            case stage = "stage"
            
            case errorUrl = "error_url"
            
            case message = "message"
            
        }

        public init(errorUrl: String? = nil, failedRecords: Int? = nil, message: String? = nil, stage: String? = nil, successRecords: Int? = nil, totalRecords: Int? = nil) {
            
            self.totalRecords = totalRecords
            
            self.successRecords = successRecords
            
            self.failedRecords = failedRecords
            
            self.stage = stage
            
            self.errorUrl = errorUrl
            
            self.message = message
            
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
                    stage = try container.decode(String.self, forKey: .stage)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    errorUrl = try container.decode(String.self, forKey: .errorUrl)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    message = try container.decode(String.self, forKey: .message)
                
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
            
            
            
            
            try? container.encodeIfPresent(stage, forKey: .stage)
            
            
            
            
            try? container.encodeIfPresent(errorUrl, forKey: .errorUrl)
            
            
            
            
            try? container.encodeIfPresent(message, forKey: .message)
            
            
        }
        
    }
}


