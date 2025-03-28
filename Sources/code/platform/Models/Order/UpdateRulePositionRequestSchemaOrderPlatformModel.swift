

import Foundation


public extension PlatformClient.Order {
    /*
        Model: UpdateRulePositionRequestSchema
        Used By: Order
    */

    class UpdateRulePositionRequestSchema: Codable {
        
        
        public var ruleId: Int
        
        public var pageNo: Int
        
        public var pageSize: Int
        
        public var position: Int
        
        public var flowType: String
        

        public enum CodingKeys: String, CodingKey {
            
            case ruleId = "rule_id"
            
            case pageNo = "page_no"
            
            case pageSize = "page_size"
            
            case position = "position"
            
            case flowType = "flow_type"
            
        }

        public init(flowType: String, pageNo: Int, pageSize: Int, position: Int, ruleId: Int) {
            
            self.ruleId = ruleId
            
            self.pageNo = pageNo
            
            self.pageSize = pageSize
            
            self.position = position
            
            self.flowType = flowType
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                ruleId = try container.decode(Int.self, forKey: .ruleId)
                
            
            
            
                pageNo = try container.decode(Int.self, forKey: .pageNo)
                
            
            
            
                pageSize = try container.decode(Int.self, forKey: .pageSize)
                
            
            
            
                position = try container.decode(Int.self, forKey: .position)
                
            
            
            
                flowType = try container.decode(String.self, forKey: .flowType)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(ruleId, forKey: .ruleId)
            
            
            
            
            try? container.encodeIfPresent(pageNo, forKey: .pageNo)
            
            
            
            
            try? container.encodeIfPresent(pageSize, forKey: .pageSize)
            
            
            
            
            try? container.encodeIfPresent(position, forKey: .position)
            
            
            
            
            try? container.encodeIfPresent(flowType, forKey: .flowType)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Order {
    /*
        Model: UpdateRulePositionRequestSchema
        Used By: Order
    */

    class UpdateRulePositionRequestSchema: Codable {
        
        
        public var ruleId: Int
        
        public var pageNo: Int
        
        public var pageSize: Int
        
        public var position: Int
        
        public var flowType: String
        

        public enum CodingKeys: String, CodingKey {
            
            case ruleId = "rule_id"
            
            case pageNo = "page_no"
            
            case pageSize = "page_size"
            
            case position = "position"
            
            case flowType = "flow_type"
            
        }

        public init(flowType: String, pageNo: Int, pageSize: Int, position: Int, ruleId: Int) {
            
            self.ruleId = ruleId
            
            self.pageNo = pageNo
            
            self.pageSize = pageSize
            
            self.position = position
            
            self.flowType = flowType
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                ruleId = try container.decode(Int.self, forKey: .ruleId)
                
            
            
            
                pageNo = try container.decode(Int.self, forKey: .pageNo)
                
            
            
            
                pageSize = try container.decode(Int.self, forKey: .pageSize)
                
            
            
            
                position = try container.decode(Int.self, forKey: .position)
                
            
            
            
                flowType = try container.decode(String.self, forKey: .flowType)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(ruleId, forKey: .ruleId)
            
            
            
            
            try? container.encodeIfPresent(pageNo, forKey: .pageNo)
            
            
            
            
            try? container.encodeIfPresent(pageSize, forKey: .pageSize)
            
            
            
            
            try? container.encodeIfPresent(position, forKey: .position)
            
            
            
            
            try? container.encodeIfPresent(flowType, forKey: .flowType)
            
            
        }
        
    }
}


