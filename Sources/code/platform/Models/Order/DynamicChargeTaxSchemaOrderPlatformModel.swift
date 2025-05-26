

import Foundation


public extension PlatformClient.Order {
    /*
        Model: DynamicChargeTaxSchema
        Used By: Order
    */

    class DynamicChargeTaxSchema: Codable {
        
        
        public var reportingHsnCode: String
        

        public enum CodingKeys: String, CodingKey {
            
            case reportingHsnCode = "reporting_hsn_code"
            
        }

        public init(reportingHsnCode: String) {
            
            self.reportingHsnCode = reportingHsnCode
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                reportingHsnCode = try container.decode(String.self, forKey: .reportingHsnCode)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(reportingHsnCode, forKey: .reportingHsnCode)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Order {
    /*
        Model: DynamicChargeTaxSchema
        Used By: Order
    */

    class DynamicChargeTaxSchema: Codable {
        
        
        public var reportingHsnCode: String
        

        public enum CodingKeys: String, CodingKey {
            
            case reportingHsnCode = "reporting_hsn_code"
            
        }

        public init(reportingHsnCode: String) {
            
            self.reportingHsnCode = reportingHsnCode
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                reportingHsnCode = try container.decode(String.self, forKey: .reportingHsnCode)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(reportingHsnCode, forKey: .reportingHsnCode)
            
            
        }
        
    }
}


