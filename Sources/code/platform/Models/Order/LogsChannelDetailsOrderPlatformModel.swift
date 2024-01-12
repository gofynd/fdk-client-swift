

import Foundation


public extension PlatformClient.Order {
    /*
        Model: LogsChannelDetails
        Used By: Order
    */

    class LogsChannelDetails: Codable {
        
        
        public var channelId: String?
        
        public var name: String?
        
        public var logo: String?
        
        public var channelShipmentId: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case channelId = "channel_id"
            
            case name = "name"
            
            case logo = "logo"
            
            case channelShipmentId = "channel_shipment_id"
            
        }

        public init(channelId: String? = nil, channelShipmentId: String? = nil, logo: String? = nil, name: String? = nil) {
            
            self.channelId = channelId
            
            self.name = name
            
            self.logo = logo
            
            self.channelShipmentId = channelShipmentId
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    channelId = try container.decode(String.self, forKey: .channelId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    name = try container.decode(String.self, forKey: .name)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    logo = try container.decode(String.self, forKey: .logo)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    channelShipmentId = try container.decode(String.self, forKey: .channelShipmentId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encode(channelId, forKey: .channelId)
            
            
            
            
            try? container.encode(name, forKey: .name)
            
            
            
            
            try? container.encode(logo, forKey: .logo)
            
            
            
            
            try? container.encode(channelShipmentId, forKey: .channelShipmentId)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Order {
    /*
        Model: LogsChannelDetails
        Used By: Order
    */

    class LogsChannelDetails: Codable {
        
        
        public var channelId: String?
        
        public var name: String?
        
        public var logo: String?
        
        public var channelShipmentId: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case channelId = "channel_id"
            
            case name = "name"
            
            case logo = "logo"
            
            case channelShipmentId = "channel_shipment_id"
            
        }

        public init(channelId: String? = nil, channelShipmentId: String? = nil, logo: String? = nil, name: String? = nil) {
            
            self.channelId = channelId
            
            self.name = name
            
            self.logo = logo
            
            self.channelShipmentId = channelShipmentId
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    channelId = try container.decode(String.self, forKey: .channelId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    name = try container.decode(String.self, forKey: .name)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    logo = try container.decode(String.self, forKey: .logo)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    channelShipmentId = try container.decode(String.self, forKey: .channelShipmentId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encode(channelId, forKey: .channelId)
            
            
            
            
            try? container.encode(name, forKey: .name)
            
            
            
            
            try? container.encode(logo, forKey: .logo)
            
            
            
            
            try? container.encode(channelShipmentId, forKey: .channelShipmentId)
            
            
        }
        
    }
}


