

import Foundation


public extension PlatformClient.Payment {
    /*
        Model: IntentApp
        Used By: Payment
    */

    class IntentApp: Codable {
        
        
        public var packageName: String?
        
        public var displayName: String?
        
        public var code: String?
        
        public var logos: PaymentModeLogo?
        

        public enum CodingKeys: String, CodingKey {
            
            case packageName = "package_name"
            
            case displayName = "display_name"
            
            case code = "code"
            
            case logos = "logos"
            
        }

        public init(code: String? = nil, displayName: String? = nil, logos: PaymentModeLogo? = nil, packageName: String? = nil) {
            
            self.packageName = packageName
            
            self.displayName = displayName
            
            self.code = code
            
            self.logos = logos
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    packageName = try container.decode(String.self, forKey: .packageName)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    displayName = try container.decode(String.self, forKey: .displayName)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    code = try container.decode(String.self, forKey: .code)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    logos = try container.decode(PaymentModeLogo.self, forKey: .logos)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(packageName, forKey: .packageName)
            
            
            
            
            try? container.encodeIfPresent(displayName, forKey: .displayName)
            
            
            
            
            try? container.encodeIfPresent(code, forKey: .code)
            
            
            
            
            try? container.encodeIfPresent(logos, forKey: .logos)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Payment {
    /*
        Model: IntentApp
        Used By: Payment
    */

    class IntentApp: Codable {
        
        
        public var packageName: String?
        
        public var displayName: String?
        
        public var code: String?
        
        public var logos: PaymentModeLogo?
        

        public enum CodingKeys: String, CodingKey {
            
            case packageName = "package_name"
            
            case displayName = "display_name"
            
            case code = "code"
            
            case logos = "logos"
            
        }

        public init(code: String? = nil, displayName: String? = nil, logos: PaymentModeLogo? = nil, packageName: String? = nil) {
            
            self.packageName = packageName
            
            self.displayName = displayName
            
            self.code = code
            
            self.logos = logos
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    packageName = try container.decode(String.self, forKey: .packageName)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    displayName = try container.decode(String.self, forKey: .displayName)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    code = try container.decode(String.self, forKey: .code)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    logos = try container.decode(PaymentModeLogo.self, forKey: .logos)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(packageName, forKey: .packageName)
            
            
            
            
            try? container.encodeIfPresent(displayName, forKey: .displayName)
            
            
            
            
            try? container.encodeIfPresent(code, forKey: .code)
            
            
            
            
            try? container.encodeIfPresent(logos, forKey: .logos)
            
            
        }
        
    }
}


