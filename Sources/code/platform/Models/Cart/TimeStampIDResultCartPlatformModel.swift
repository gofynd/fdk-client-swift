

import Foundation




public extension PlatformClient.ApplicationClient.Cart {
    /*
        Model: TimeStampIDResult
        Used By: Cart
    */

    class TimeStampIDResult: Codable {
        
        
        public var id: String?
        
        public var appId: String?
        
        public var companyId: Int?
        
        public var createdOn: String?
        
        public var updatedOn: String?
        
        public var lastModifiedBy: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case id = "id"
            
            case appId = "app_id"
            
            case companyId = "company_id"
            
            case createdOn = "created_on"
            
            case updatedOn = "updated_on"
            
            case lastModifiedBy = "last_modified_by"
            
        }

        public init(appId: String? = nil, companyId: Int? = nil, createdOn: String? = nil, id: String? = nil, lastModifiedBy: String? = nil, updatedOn: String? = nil) {
            
            self.id = id
            
            self.appId = appId
            
            self.companyId = companyId
            
            self.createdOn = createdOn
            
            self.updatedOn = updatedOn
            
            self.lastModifiedBy = lastModifiedBy
            
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
                    appId = try container.decode(String.self, forKey: .appId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    companyId = try container.decode(Int.self, forKey: .companyId)
                
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
                    updatedOn = try container.decode(String.self, forKey: .updatedOn)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    lastModifiedBy = try container.decode(String.self, forKey: .lastModifiedBy)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(id, forKey: .id)
            
            
            
            
            try? container.encodeIfPresent(appId, forKey: .appId)
            
            
            
            
            try? container.encodeIfPresent(companyId, forKey: .companyId)
            
            
            
            
            try? container.encodeIfPresent(createdOn, forKey: .createdOn)
            
            
            
            
            try? container.encodeIfPresent(updatedOn, forKey: .updatedOn)
            
            
            
            
            try? container.encodeIfPresent(lastModifiedBy, forKey: .lastModifiedBy)
            
            
        }
        
    }
}


