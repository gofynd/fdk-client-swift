

import Foundation


public extension PlatformClient.Payment {
    /*
        Model: MerchantOnBoardingResponse
        Used By: Payment
    */

    class MerchantOnBoardingResponse: Codable {
        
        
        public var data: MerchantOnboardingData
        
        public var success: Bool
        

        public enum CodingKeys: String, CodingKey {
            
            case data = "data"
            
            case success = "success"
            
        }

        public init(data: MerchantOnboardingData, success: Bool) {
            
            self.data = data
            
            self.success = success
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                data = try container.decode(MerchantOnboardingData.self, forKey: .data)
                
            
            
            
                success = try container.decode(Bool.self, forKey: .success)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(data, forKey: .data)
            
            
            
            
            try? container.encodeIfPresent(success, forKey: .success)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Payment {
    /*
        Model: MerchantOnBoardingResponse
        Used By: Payment
    */

    class MerchantOnBoardingResponse: Codable {
        
        
        public var data: MerchantOnboardingData
        
        public var success: Bool
        

        public enum CodingKeys: String, CodingKey {
            
            case data = "data"
            
            case success = "success"
            
        }

        public init(data: MerchantOnboardingData, success: Bool) {
            
            self.data = data
            
            self.success = success
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                data = try container.decode(MerchantOnboardingData.self, forKey: .data)
                
            
            
            
                success = try container.decode(Bool.self, forKey: .success)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(data, forKey: .data)
            
            
            
            
            try? container.encodeIfPresent(success, forKey: .success)
            
            
        }
        
    }
}


