

import Foundation


public extension PlatformClient.Order {
    /*
        Model: AffiliateConfig
        Used By: Order
    */

    class AffiliateConfig: Codable {
        
        
        public var app: AffiliateAppConfig?
        
        public var inventory: AffiliateInventoryConfig?
        
        public var appCompanyId: Int?
        

        public enum CodingKeys: String, CodingKey {
            
            case app = "app"
            
            case inventory = "inventory"
            
            case appCompanyId = "app_company_id"
            
        }

        public init(app: AffiliateAppConfig? = nil, appCompanyId: Int? = nil, inventory: AffiliateInventoryConfig? = nil) {
            
            self.app = app
            
            self.inventory = inventory
            
            self.appCompanyId = appCompanyId
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    app = try container.decode(AffiliateAppConfig.self, forKey: .app)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    inventory = try container.decode(AffiliateInventoryConfig.self, forKey: .inventory)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
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
            
            
            
            try? container.encodeIfPresent(app, forKey: .app)
            
            
            
            
            try? container.encodeIfPresent(inventory, forKey: .inventory)
            
            
            
            
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
        
        
        public var app: AffiliateAppConfig?
        
        public var inventory: AffiliateInventoryConfig?
        
        public var appCompanyId: Int?
        

        public enum CodingKeys: String, CodingKey {
            
            case app = "app"
            
            case inventory = "inventory"
            
            case appCompanyId = "app_company_id"
            
        }

        public init(app: AffiliateAppConfig? = nil, appCompanyId: Int? = nil, inventory: AffiliateInventoryConfig? = nil) {
            
            self.app = app
            
            self.inventory = inventory
            
            self.appCompanyId = appCompanyId
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    app = try container.decode(AffiliateAppConfig.self, forKey: .app)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    inventory = try container.decode(AffiliateInventoryConfig.self, forKey: .inventory)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
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
            
            
            
            try? container.encodeIfPresent(app, forKey: .app)
            
            
            
            
            try? container.encodeIfPresent(inventory, forKey: .inventory)
            
            
            
            
            try? container.encodeIfPresent(appCompanyId, forKey: .appCompanyId)
            
            
        }
        
    }
}


