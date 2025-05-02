

import Foundation


public extension PlatformClient.Order {
    /*
        Model: AffiliateConfig
        Used By: Order
    */

    class AffiliateConfig: Codable {
        
        
        public var appCompanyId: Int?
        

        public enum CodingKeys: String, CodingKey {
            
            case appCompanyId = "app_company_id"
            
        }

        public init(appCompanyId: Int? = nil) {
            
            self.appCompanyId = appCompanyId
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    appCompanyId = try container.decode(Int.self, forKey: .appCompanyId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(appCompanyId, forKey: .appCompanyId)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Order {
    /*
        Model: AffiliateConfig
        Used By: Order
    */

    class AffiliateConfig: Codable {
        
        
        public var appCompanyId: Int?
        

        public enum CodingKeys: String, CodingKey {
            
            case appCompanyId = "app_company_id"
            
        }

        public init(appCompanyId: Int? = nil) {
            
            self.appCompanyId = appCompanyId
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    appCompanyId = try container.decode(Int.self, forKey: .appCompanyId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(appCompanyId, forKey: .appCompanyId)
            
            
        }
        
    }
}


