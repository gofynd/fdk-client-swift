

import Foundation


public extension PlatformClient.Order {
    /*
        Model: FyndOrderIdList
        Used By: Order
    */

    class FyndOrderIdList: Codable {
        
        
        public var fyndOrderId: [String]?
        
        public var startDate: String?
        
        public var endDate: String?
        
        public var mobile: Int?
        

        public enum CodingKeys: String, CodingKey {
            
            case fyndOrderId = "fynd_order_id"
            
            case startDate = "start_date"
            
            case endDate = "end_date"
            
            case mobile = "mobile"
            
        }

        public init(endDate: String? = nil, fyndOrderId: [String]? = nil, mobile: Int? = nil, startDate: String? = nil) {
            
            self.fyndOrderId = fyndOrderId
            
            self.startDate = startDate
            
            self.endDate = endDate
            
            self.mobile = mobile
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    fyndOrderId = try container.decode([String].self, forKey: .fyndOrderId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    startDate = try container.decode(String.self, forKey: .startDate)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    endDate = try container.decode(String.self, forKey: .endDate)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    mobile = try container.decode(Int.self, forKey: .mobile)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(fyndOrderId, forKey: .fyndOrderId)
            
            
            
            
            try? container.encodeIfPresent(startDate, forKey: .startDate)
            
            
            
            
            try? container.encodeIfPresent(endDate, forKey: .endDate)
            
            
            
            
            try? container.encodeIfPresent(mobile, forKey: .mobile)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Order {
    /*
        Model: FyndOrderIdList
        Used By: Order
    */

    class FyndOrderIdList: Codable {
        
        
        public var fyndOrderId: [String]?
        
        public var startDate: String?
        
        public var endDate: String?
        
        public var mobile: Int?
        

        public enum CodingKeys: String, CodingKey {
            
            case fyndOrderId = "fynd_order_id"
            
            case startDate = "start_date"
            
            case endDate = "end_date"
            
            case mobile = "mobile"
            
        }

        public init(endDate: String? = nil, fyndOrderId: [String]? = nil, mobile: Int? = nil, startDate: String? = nil) {
            
            self.fyndOrderId = fyndOrderId
            
            self.startDate = startDate
            
            self.endDate = endDate
            
            self.mobile = mobile
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    fyndOrderId = try container.decode([String].self, forKey: .fyndOrderId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    startDate = try container.decode(String.self, forKey: .startDate)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    endDate = try container.decode(String.self, forKey: .endDate)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    mobile = try container.decode(Int.self, forKey: .mobile)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(fyndOrderId, forKey: .fyndOrderId)
            
            
            
            
            try? container.encodeIfPresent(startDate, forKey: .startDate)
            
            
            
            
            try? container.encodeIfPresent(endDate, forKey: .endDate)
            
            
            
            
            try? container.encodeIfPresent(mobile, forKey: .mobile)
            
            
        }
        
    }
}


