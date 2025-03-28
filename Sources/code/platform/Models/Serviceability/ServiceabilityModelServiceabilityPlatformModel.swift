

import Foundation


public extension PlatformClient.Serviceability {
    /*
        Model: ServiceabilityModel
        Used By: Serviceability
    */

    class ServiceabilityModel: Codable {
        
        
        public var lmCodLimit: Int
        
        public var isQc: Bool
        
        public var pickupCutoff: String?
        
        public var routeCode: String?
        
        public var isFirstMile: Bool
        
        public var isReturn: Bool
        
        public var isInstallation: Bool
        
        public var isLastMile: Bool
        

        public enum CodingKeys: String, CodingKey {
            
            case lmCodLimit = "lm_cod_limit"
            
            case isQc = "is_qc"
            
            case pickupCutoff = "pickup_cutoff"
            
            case routeCode = "route_code"
            
            case isFirstMile = "is_first_mile"
            
            case isReturn = "is_return"
            
            case isInstallation = "is_installation"
            
            case isLastMile = "is_last_mile"
            
        }

        public init(isFirstMile: Bool, isInstallation: Bool, isLastMile: Bool, isQc: Bool, isReturn: Bool, lmCodLimit: Int, pickupCutoff: String? = nil, routeCode: String? = nil) {
            
            self.lmCodLimit = lmCodLimit
            
            self.isQc = isQc
            
            self.pickupCutoff = pickupCutoff
            
            self.routeCode = routeCode
            
            self.isFirstMile = isFirstMile
            
            self.isReturn = isReturn
            
            self.isInstallation = isInstallation
            
            self.isLastMile = isLastMile
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                lmCodLimit = try container.decode(Int.self, forKey: .lmCodLimit)
                
            
            
            
                isQc = try container.decode(Bool.self, forKey: .isQc)
                
            
            
            
                do {
                    pickupCutoff = try container.decode(String.self, forKey: .pickupCutoff)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    routeCode = try container.decode(String.self, forKey: .routeCode)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                isFirstMile = try container.decode(Bool.self, forKey: .isFirstMile)
                
            
            
            
                isReturn = try container.decode(Bool.self, forKey: .isReturn)
                
            
            
            
                isInstallation = try container.decode(Bool.self, forKey: .isInstallation)
                
            
            
            
                isLastMile = try container.decode(Bool.self, forKey: .isLastMile)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(lmCodLimit, forKey: .lmCodLimit)
            
            
            
            
            try? container.encodeIfPresent(isQc, forKey: .isQc)
            
            
            
            
            try? container.encodeIfPresent(pickupCutoff, forKey: .pickupCutoff)
            
            
            
            
            try? container.encodeIfPresent(routeCode, forKey: .routeCode)
            
            
            
            
            try? container.encodeIfPresent(isFirstMile, forKey: .isFirstMile)
            
            
            
            
            try? container.encodeIfPresent(isReturn, forKey: .isReturn)
            
            
            
            
            try? container.encodeIfPresent(isInstallation, forKey: .isInstallation)
            
            
            
            
            try? container.encodeIfPresent(isLastMile, forKey: .isLastMile)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Serviceability {
    /*
        Model: ServiceabilityModel
        Used By: Serviceability
    */

    class ServiceabilityModel: Codable {
        
        
        public var lmCodLimit: Int
        
        public var isQc: Bool
        
        public var pickupCutoff: String?
        
        public var routeCode: String?
        
        public var isFirstMile: Bool
        
        public var isReturn: Bool
        
        public var isInstallation: Bool
        
        public var isLastMile: Bool
        

        public enum CodingKeys: String, CodingKey {
            
            case lmCodLimit = "lm_cod_limit"
            
            case isQc = "is_qc"
            
            case pickupCutoff = "pickup_cutoff"
            
            case routeCode = "route_code"
            
            case isFirstMile = "is_first_mile"
            
            case isReturn = "is_return"
            
            case isInstallation = "is_installation"
            
            case isLastMile = "is_last_mile"
            
        }

        public init(isFirstMile: Bool, isInstallation: Bool, isLastMile: Bool, isQc: Bool, isReturn: Bool, lmCodLimit: Int, pickupCutoff: String? = nil, routeCode: String? = nil) {
            
            self.lmCodLimit = lmCodLimit
            
            self.isQc = isQc
            
            self.pickupCutoff = pickupCutoff
            
            self.routeCode = routeCode
            
            self.isFirstMile = isFirstMile
            
            self.isReturn = isReturn
            
            self.isInstallation = isInstallation
            
            self.isLastMile = isLastMile
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                lmCodLimit = try container.decode(Int.self, forKey: .lmCodLimit)
                
            
            
            
                isQc = try container.decode(Bool.self, forKey: .isQc)
                
            
            
            
                do {
                    pickupCutoff = try container.decode(String.self, forKey: .pickupCutoff)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    routeCode = try container.decode(String.self, forKey: .routeCode)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                isFirstMile = try container.decode(Bool.self, forKey: .isFirstMile)
                
            
            
            
                isReturn = try container.decode(Bool.self, forKey: .isReturn)
                
            
            
            
                isInstallation = try container.decode(Bool.self, forKey: .isInstallation)
                
            
            
            
                isLastMile = try container.decode(Bool.self, forKey: .isLastMile)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(lmCodLimit, forKey: .lmCodLimit)
            
            
            
            
            try? container.encodeIfPresent(isQc, forKey: .isQc)
            
            
            
            
            try? container.encodeIfPresent(pickupCutoff, forKey: .pickupCutoff)
            
            
            
            
            try? container.encodeIfPresent(routeCode, forKey: .routeCode)
            
            
            
            
            try? container.encodeIfPresent(isFirstMile, forKey: .isFirstMile)
            
            
            
            
            try? container.encodeIfPresent(isReturn, forKey: .isReturn)
            
            
            
            
            try? container.encodeIfPresent(isInstallation, forKey: .isInstallation)
            
            
            
            
            try? container.encodeIfPresent(isLastMile, forKey: .isLastMile)
            
            
        }
        
    }
}


