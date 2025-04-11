

import Foundation


public extension PlatformClient.Payment {
    /*
        Model: OrderBeneficiaryResponseSchemaV2
        Used By: Payment
    */

    class OrderBeneficiaryResponseSchemaV2: Codable {
        
        
        public var showBeneficiaryDetails: Bool
        
        public var data: BeneficiaryRefundOptions
        
        public var limit: RefundOptionsLimit
        

        public enum CodingKeys: String, CodingKey {
            
            case showBeneficiaryDetails = "show_beneficiary_details"
            
            case data = "data"
            
            case limit = "limit"
            
        }

        public init(data: BeneficiaryRefundOptions, limit: RefundOptionsLimit, showBeneficiaryDetails: Bool) {
            
            self.showBeneficiaryDetails = showBeneficiaryDetails
            
            self.data = data
            
            self.limit = limit
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                showBeneficiaryDetails = try container.decode(Bool.self, forKey: .showBeneficiaryDetails)
                
            
            
            
                data = try container.decode(BeneficiaryRefundOptions.self, forKey: .data)
                
            
            
            
                limit = try container.decode(RefundOptionsLimit.self, forKey: .limit)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(showBeneficiaryDetails, forKey: .showBeneficiaryDetails)
            
            
            
            
            try? container.encodeIfPresent(data, forKey: .data)
            
            
            
            
            try? container.encodeIfPresent(limit, forKey: .limit)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Payment {
    /*
        Model: OrderBeneficiaryResponseSchemaV2
        Used By: Payment
    */

    class OrderBeneficiaryResponseSchemaV2: Codable {
        
        
        public var showBeneficiaryDetails: Bool
        
        public var data: BeneficiaryRefundOptions
        
        public var limit: RefundOptionsLimit
        

        public enum CodingKeys: String, CodingKey {
            
            case showBeneficiaryDetails = "show_beneficiary_details"
            
            case data = "data"
            
            case limit = "limit"
            
        }

        public init(data: BeneficiaryRefundOptions, limit: RefundOptionsLimit, showBeneficiaryDetails: Bool) {
            
            self.showBeneficiaryDetails = showBeneficiaryDetails
            
            self.data = data
            
            self.limit = limit
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                showBeneficiaryDetails = try container.decode(Bool.self, forKey: .showBeneficiaryDetails)
                
            
            
            
                data = try container.decode(BeneficiaryRefundOptions.self, forKey: .data)
                
            
            
            
                limit = try container.decode(RefundOptionsLimit.self, forKey: .limit)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(showBeneficiaryDetails, forKey: .showBeneficiaryDetails)
            
            
            
            
            try? container.encodeIfPresent(data, forKey: .data)
            
            
            
            
            try? container.encodeIfPresent(limit, forKey: .limit)
            
            
        }
        
    }
}


