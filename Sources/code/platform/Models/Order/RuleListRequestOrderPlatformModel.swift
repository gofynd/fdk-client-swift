

import Foundation


public extension PlatformClient.Order {
    /*
        Model: RuleListRequest
        Used By: Order
    */

    class RuleListRequest: Codable {
        
        
        public var pageSize: Int?
        
        public var pageNo: Int?
        
        public var flowType: String?
        
        public var laneType: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case pageSize = "page_size"
            
            case pageNo = "page_no"
            
            case flowType = "flow_type"
            
            case laneType = "lane_type"
            
        }

        public init(flowType: String? = nil, laneType: String? = nil, pageNo: Int? = nil, pageSize: Int? = nil) {
            
            self.pageSize = pageSize
            
            self.pageNo = pageNo
            
            self.flowType = flowType
            
            self.laneType = laneType
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    pageSize = try container.decode(Int.self, forKey: .pageSize)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    pageNo = try container.decode(Int.self, forKey: .pageNo)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    flowType = try container.decode(String.self, forKey: .flowType)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    laneType = try container.decode(String.self, forKey: .laneType)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(pageSize, forKey: .pageSize)
            
            
            
            
            try? container.encodeIfPresent(pageNo, forKey: .pageNo)
            
            
            
            
            try? container.encodeIfPresent(flowType, forKey: .flowType)
            
            
            
            
            try? container.encodeIfPresent(laneType, forKey: .laneType)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Order {
    /*
        Model: RuleListRequest
        Used By: Order
    */

    class RuleListRequest: Codable {
        
        
        public var pageSize: Int?
        
        public var pageNo: Int?
        
        public var flowType: String?
        
        public var laneType: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case pageSize = "page_size"
            
            case pageNo = "page_no"
            
            case flowType = "flow_type"
            
            case laneType = "lane_type"
            
        }

        public init(flowType: String? = nil, laneType: String? = nil, pageNo: Int? = nil, pageSize: Int? = nil) {
            
            self.pageSize = pageSize
            
            self.pageNo = pageNo
            
            self.flowType = flowType
            
            self.laneType = laneType
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    pageSize = try container.decode(Int.self, forKey: .pageSize)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    pageNo = try container.decode(Int.self, forKey: .pageNo)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    flowType = try container.decode(String.self, forKey: .flowType)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    laneType = try container.decode(String.self, forKey: .laneType)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(pageSize, forKey: .pageSize)
            
            
            
            
            try? container.encodeIfPresent(pageNo, forKey: .pageNo)
            
            
            
            
            try? container.encodeIfPresent(flowType, forKey: .flowType)
            
            
            
            
            try? container.encodeIfPresent(laneType, forKey: .laneType)
            
            
        }
        
    }
}


