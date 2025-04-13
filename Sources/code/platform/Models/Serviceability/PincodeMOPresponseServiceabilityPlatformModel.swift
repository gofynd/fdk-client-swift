

import Foundation


public extension PlatformClient.Serviceability {
    /*
        Model: PincodeMOPresponse
        Used By: Serviceability
    */

    class PincodeMOPresponse: Codable {
        
        
        public var batchId: String
        
        public var success: Bool
        
        public var statusCode: Int
        
        public var country: String
        
        public var action: String
        
        public var pincodes: [Int]?
        
        public var updatedPincodes: [PincodeMopUpdateResponse]?
        

        public enum CodingKeys: String, CodingKey {
            
            case batchId = "batch_id"
            
            case success = "success"
            
            case statusCode = "status_code"
            
            case country = "country"
            
            case action = "action"
            
            case pincodes = "pincodes"
            
            case updatedPincodes = "updated_pincodes"
            
        }

        public init(action: String, batchId: String, country: String, pincodes: [Int]? = nil, statusCode: Int, success: Bool, updatedPincodes: [PincodeMopUpdateResponse]? = nil) {
            
            self.batchId = batchId
            
            self.success = success
            
            self.statusCode = statusCode
            
            self.country = country
            
            self.action = action
            
            self.pincodes = pincodes
            
            self.updatedPincodes = updatedPincodes
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                batchId = try container.decode(String.self, forKey: .batchId)
                
            
            
            
                success = try container.decode(Bool.self, forKey: .success)
                
            
            
            
                statusCode = try container.decode(Int.self, forKey: .statusCode)
                
            
            
            
                country = try container.decode(String.self, forKey: .country)
                
            
            
            
                action = try container.decode(String.self, forKey: .action)
                
            
            
            
                do {
                    pincodes = try container.decode([Int].self, forKey: .pincodes)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    updatedPincodes = try container.decode([PincodeMopUpdateResponse].self, forKey: .updatedPincodes)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(batchId, forKey: .batchId)
            
            
            
            
            try? container.encodeIfPresent(success, forKey: .success)
            
            
            
            
            try? container.encodeIfPresent(statusCode, forKey: .statusCode)
            
            
            
            
            try? container.encodeIfPresent(country, forKey: .country)
            
            
            
            
            try? container.encodeIfPresent(action, forKey: .action)
            
            
            
            
            try? container.encodeIfPresent(pincodes, forKey: .pincodes)
            
            
            
            
            try? container.encodeIfPresent(updatedPincodes, forKey: .updatedPincodes)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Serviceability {
    /*
        Model: PincodeMOPresponse
        Used By: Serviceability
    */

    class PincodeMOPresponse: Codable {
        
        
        public var batchId: String
        
        public var success: Bool
        
        public var statusCode: Int
        
        public var country: String
        
        public var action: String
        
        public var pincodes: [Int]?
        
        public var updatedPincodes: [PincodeMopUpdateResponse]?
        

        public enum CodingKeys: String, CodingKey {
            
            case batchId = "batch_id"
            
            case success = "success"
            
            case statusCode = "status_code"
            
            case country = "country"
            
            case action = "action"
            
            case pincodes = "pincodes"
            
            case updatedPincodes = "updated_pincodes"
            
        }

        public init(action: String, batchId: String, country: String, pincodes: [Int]? = nil, statusCode: Int, success: Bool, updatedPincodes: [PincodeMopUpdateResponse]? = nil) {
            
            self.batchId = batchId
            
            self.success = success
            
            self.statusCode = statusCode
            
            self.country = country
            
            self.action = action
            
            self.pincodes = pincodes
            
            self.updatedPincodes = updatedPincodes
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                batchId = try container.decode(String.self, forKey: .batchId)
                
            
            
            
                success = try container.decode(Bool.self, forKey: .success)
                
            
            
            
                statusCode = try container.decode(Int.self, forKey: .statusCode)
                
            
            
            
                country = try container.decode(String.self, forKey: .country)
                
            
            
            
                action = try container.decode(String.self, forKey: .action)
                
            
            
            
                do {
                    pincodes = try container.decode([Int].self, forKey: .pincodes)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    updatedPincodes = try container.decode([PincodeMopUpdateResponse].self, forKey: .updatedPincodes)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(batchId, forKey: .batchId)
            
            
            
            
            try? container.encodeIfPresent(success, forKey: .success)
            
            
            
            
            try? container.encodeIfPresent(statusCode, forKey: .statusCode)
            
            
            
            
            try? container.encodeIfPresent(country, forKey: .country)
            
            
            
            
            try? container.encodeIfPresent(action, forKey: .action)
            
            
            
            
            try? container.encodeIfPresent(pincodes, forKey: .pincodes)
            
            
            
            
            try? container.encodeIfPresent(updatedPincodes, forKey: .updatedPincodes)
            
            
        }
        
    }
}


