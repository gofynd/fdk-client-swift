

import Foundation


public extension PlatformClient.Serviceability {
    /*
        Model: CourierPartnerSchemeDetailsModel
        Used By: Serviceability
    */

    class CourierPartnerSchemeDetailsModel: Codable {
        
        
        public var extensionId: String
        
        public var schemeId: String?
        
        public var name: String
        
        public var defaultForwardPickupCutoff: String?
        
        public var defaultReversePickupCutoff: String?
        
        public var defaultCutoffTimezone: String?
        
        public var defaultTat: CourierPartnerSchemeDefaultTat?
        
        public var weight: ArithmeticOperations
        
        public var volumetricWeight: ArithmeticOperations?
        
        public var transportType: String
        
        public var region: String
        
        public var deliveryType: String
        
        public var paymentMode: [String]
        
        public var stage: String
        
        public var statusUpdates: String?
        
        public var ndrAttempts: Int?
        
        public var qcShipmentItemQuantity: Int?
        
        public var nonQcShipmentItemQuantity: Int?
        
        public var feature: CourierPartnerSchemeFeatures
        

        public enum CodingKeys: String, CodingKey {
            
            case extensionId = "extension_id"
            
            case schemeId = "scheme_id"
            
            case name = "name"
            
            case defaultForwardPickupCutoff = "default_forward_pickup_cutoff"
            
            case defaultReversePickupCutoff = "default_reverse_pickup_cutoff"
            
            case defaultCutoffTimezone = "default_cutoff_timezone"
            
            case defaultTat = "default_tat"
            
            case weight = "weight"
            
            case volumetricWeight = "volumetric_weight"
            
            case transportType = "transport_type"
            
            case region = "region"
            
            case deliveryType = "delivery_type"
            
            case paymentMode = "payment_mode"
            
            case stage = "stage"
            
            case statusUpdates = "status_updates"
            
            case ndrAttempts = "ndr_attempts"
            
            case qcShipmentItemQuantity = "qc_shipment_item_quantity"
            
            case nonQcShipmentItemQuantity = "non_qc_shipment_item_quantity"
            
            case feature = "feature"
            
        }

        public init(defaultCutoffTimezone: String? = nil, defaultForwardPickupCutoff: String? = nil, defaultReversePickupCutoff: String? = nil, defaultTat: CourierPartnerSchemeDefaultTat? = nil, deliveryType: String, extensionId: String, feature: CourierPartnerSchemeFeatures, name: String, ndrAttempts: Int? = nil, nonQcShipmentItemQuantity: Int? = nil, paymentMode: [String], qcShipmentItemQuantity: Int? = nil, region: String, schemeId: String? = nil, stage: String, statusUpdates: String? = nil, transportType: String, volumetricWeight: ArithmeticOperations? = nil, weight: ArithmeticOperations) {
            
            self.extensionId = extensionId
            
            self.schemeId = schemeId
            
            self.name = name
            
            self.defaultForwardPickupCutoff = defaultForwardPickupCutoff
            
            self.defaultReversePickupCutoff = defaultReversePickupCutoff
            
            self.defaultCutoffTimezone = defaultCutoffTimezone
            
            self.defaultTat = defaultTat
            
            self.weight = weight
            
            self.volumetricWeight = volumetricWeight
            
            self.transportType = transportType
            
            self.region = region
            
            self.deliveryType = deliveryType
            
            self.paymentMode = paymentMode
            
            self.stage = stage
            
            self.statusUpdates = statusUpdates
            
            self.ndrAttempts = ndrAttempts
            
            self.qcShipmentItemQuantity = qcShipmentItemQuantity
            
            self.nonQcShipmentItemQuantity = nonQcShipmentItemQuantity
            
            self.feature = feature
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                extensionId = try container.decode(String.self, forKey: .extensionId)
                
            
            
            
                do {
                    schemeId = try container.decode(String.self, forKey: .schemeId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                name = try container.decode(String.self, forKey: .name)
                
            
            
            
                do {
                    defaultForwardPickupCutoff = try container.decode(String.self, forKey: .defaultForwardPickupCutoff)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    defaultReversePickupCutoff = try container.decode(String.self, forKey: .defaultReversePickupCutoff)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    defaultCutoffTimezone = try container.decode(String.self, forKey: .defaultCutoffTimezone)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    defaultTat = try container.decode(CourierPartnerSchemeDefaultTat.self, forKey: .defaultTat)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                weight = try container.decode(ArithmeticOperations.self, forKey: .weight)
                
            
            
            
                do {
                    volumetricWeight = try container.decode(ArithmeticOperations.self, forKey: .volumetricWeight)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                transportType = try container.decode(String.self, forKey: .transportType)
                
            
            
            
                region = try container.decode(String.self, forKey: .region)
                
            
            
            
                deliveryType = try container.decode(String.self, forKey: .deliveryType)
                
            
            
            
                paymentMode = try container.decode([String].self, forKey: .paymentMode)
                
            
            
            
                stage = try container.decode(String.self, forKey: .stage)
                
            
            
            
                do {
                    statusUpdates = try container.decode(String.self, forKey: .statusUpdates)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    ndrAttempts = try container.decode(Int.self, forKey: .ndrAttempts)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    qcShipmentItemQuantity = try container.decode(Int.self, forKey: .qcShipmentItemQuantity)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    nonQcShipmentItemQuantity = try container.decode(Int.self, forKey: .nonQcShipmentItemQuantity)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                feature = try container.decode(CourierPartnerSchemeFeatures.self, forKey: .feature)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(extensionId, forKey: .extensionId)
            
            
            
            
            try? container.encodeIfPresent(schemeId, forKey: .schemeId)
            
            
            
            
            try? container.encodeIfPresent(name, forKey: .name)
            
            
            
            
            try? container.encodeIfPresent(defaultForwardPickupCutoff, forKey: .defaultForwardPickupCutoff)
            
            
            
            
            try? container.encodeIfPresent(defaultReversePickupCutoff, forKey: .defaultReversePickupCutoff)
            
            
            
            
            try? container.encodeIfPresent(defaultCutoffTimezone, forKey: .defaultCutoffTimezone)
            
            
            
            
            try? container.encodeIfPresent(defaultTat, forKey: .defaultTat)
            
            
            
            
            try? container.encodeIfPresent(weight, forKey: .weight)
            
            
            
            
            try? container.encodeIfPresent(volumetricWeight, forKey: .volumetricWeight)
            
            
            
            
            try? container.encodeIfPresent(transportType, forKey: .transportType)
            
            
            
            
            try? container.encodeIfPresent(region, forKey: .region)
            
            
            
            
            try? container.encodeIfPresent(deliveryType, forKey: .deliveryType)
            
            
            
            
            try? container.encodeIfPresent(paymentMode, forKey: .paymentMode)
            
            
            
            
            try? container.encodeIfPresent(stage, forKey: .stage)
            
            
            
            
            try? container.encodeIfPresent(statusUpdates, forKey: .statusUpdates)
            
            
            
            
            try? container.encodeIfPresent(ndrAttempts, forKey: .ndrAttempts)
            
            
            
            
            try? container.encodeIfPresent(qcShipmentItemQuantity, forKey: .qcShipmentItemQuantity)
            
            
            
            
            try? container.encodeIfPresent(nonQcShipmentItemQuantity, forKey: .nonQcShipmentItemQuantity)
            
            
            
            
            try? container.encodeIfPresent(feature, forKey: .feature)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Serviceability {
    /*
        Model: CourierPartnerSchemeDetailsModel
        Used By: Serviceability
    */

    class CourierPartnerSchemeDetailsModel: Codable {
        
        
        public var extensionId: String
        
        public var schemeId: String?
        
        public var name: String
        
        public var defaultForwardPickupCutoff: String?
        
        public var defaultReversePickupCutoff: String?
        
        public var defaultCutoffTimezone: String?
        
        public var defaultTat: CourierPartnerSchemeDefaultTat?
        
        public var weight: ArithmeticOperations
        
        public var volumetricWeight: ArithmeticOperations?
        
        public var transportType: String
        
        public var region: String
        
        public var deliveryType: String
        
        public var paymentMode: [String]
        
        public var stage: String
        
        public var statusUpdates: String?
        
        public var ndrAttempts: Int?
        
        public var qcShipmentItemQuantity: Int?
        
        public var nonQcShipmentItemQuantity: Int?
        
        public var feature: CourierPartnerSchemeFeatures
        

        public enum CodingKeys: String, CodingKey {
            
            case extensionId = "extension_id"
            
            case schemeId = "scheme_id"
            
            case name = "name"
            
            case defaultForwardPickupCutoff = "default_forward_pickup_cutoff"
            
            case defaultReversePickupCutoff = "default_reverse_pickup_cutoff"
            
            case defaultCutoffTimezone = "default_cutoff_timezone"
            
            case defaultTat = "default_tat"
            
            case weight = "weight"
            
            case volumetricWeight = "volumetric_weight"
            
            case transportType = "transport_type"
            
            case region = "region"
            
            case deliveryType = "delivery_type"
            
            case paymentMode = "payment_mode"
            
            case stage = "stage"
            
            case statusUpdates = "status_updates"
            
            case ndrAttempts = "ndr_attempts"
            
            case qcShipmentItemQuantity = "qc_shipment_item_quantity"
            
            case nonQcShipmentItemQuantity = "non_qc_shipment_item_quantity"
            
            case feature = "feature"
            
        }

        public init(defaultCutoffTimezone: String? = nil, defaultForwardPickupCutoff: String? = nil, defaultReversePickupCutoff: String? = nil, defaultTat: CourierPartnerSchemeDefaultTat? = nil, deliveryType: String, extensionId: String, feature: CourierPartnerSchemeFeatures, name: String, ndrAttempts: Int? = nil, nonQcShipmentItemQuantity: Int? = nil, paymentMode: [String], qcShipmentItemQuantity: Int? = nil, region: String, schemeId: String? = nil, stage: String, statusUpdates: String? = nil, transportType: String, volumetricWeight: ArithmeticOperations? = nil, weight: ArithmeticOperations) {
            
            self.extensionId = extensionId
            
            self.schemeId = schemeId
            
            self.name = name
            
            self.defaultForwardPickupCutoff = defaultForwardPickupCutoff
            
            self.defaultReversePickupCutoff = defaultReversePickupCutoff
            
            self.defaultCutoffTimezone = defaultCutoffTimezone
            
            self.defaultTat = defaultTat
            
            self.weight = weight
            
            self.volumetricWeight = volumetricWeight
            
            self.transportType = transportType
            
            self.region = region
            
            self.deliveryType = deliveryType
            
            self.paymentMode = paymentMode
            
            self.stage = stage
            
            self.statusUpdates = statusUpdates
            
            self.ndrAttempts = ndrAttempts
            
            self.qcShipmentItemQuantity = qcShipmentItemQuantity
            
            self.nonQcShipmentItemQuantity = nonQcShipmentItemQuantity
            
            self.feature = feature
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                extensionId = try container.decode(String.self, forKey: .extensionId)
                
            
            
            
                do {
                    schemeId = try container.decode(String.self, forKey: .schemeId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                name = try container.decode(String.self, forKey: .name)
                
            
            
            
                do {
                    defaultForwardPickupCutoff = try container.decode(String.self, forKey: .defaultForwardPickupCutoff)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    defaultReversePickupCutoff = try container.decode(String.self, forKey: .defaultReversePickupCutoff)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    defaultCutoffTimezone = try container.decode(String.self, forKey: .defaultCutoffTimezone)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    defaultTat = try container.decode(CourierPartnerSchemeDefaultTat.self, forKey: .defaultTat)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                weight = try container.decode(ArithmeticOperations.self, forKey: .weight)
                
            
            
            
                do {
                    volumetricWeight = try container.decode(ArithmeticOperations.self, forKey: .volumetricWeight)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                transportType = try container.decode(String.self, forKey: .transportType)
                
            
            
            
                region = try container.decode(String.self, forKey: .region)
                
            
            
            
                deliveryType = try container.decode(String.self, forKey: .deliveryType)
                
            
            
            
                paymentMode = try container.decode([String].self, forKey: .paymentMode)
                
            
            
            
                stage = try container.decode(String.self, forKey: .stage)
                
            
            
            
                do {
                    statusUpdates = try container.decode(String.self, forKey: .statusUpdates)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    ndrAttempts = try container.decode(Int.self, forKey: .ndrAttempts)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    qcShipmentItemQuantity = try container.decode(Int.self, forKey: .qcShipmentItemQuantity)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    nonQcShipmentItemQuantity = try container.decode(Int.self, forKey: .nonQcShipmentItemQuantity)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                feature = try container.decode(CourierPartnerSchemeFeatures.self, forKey: .feature)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(extensionId, forKey: .extensionId)
            
            
            
            
            try? container.encodeIfPresent(schemeId, forKey: .schemeId)
            
            
            
            
            try? container.encodeIfPresent(name, forKey: .name)
            
            
            
            
            try? container.encodeIfPresent(defaultForwardPickupCutoff, forKey: .defaultForwardPickupCutoff)
            
            
            
            
            try? container.encodeIfPresent(defaultReversePickupCutoff, forKey: .defaultReversePickupCutoff)
            
            
            
            
            try? container.encodeIfPresent(defaultCutoffTimezone, forKey: .defaultCutoffTimezone)
            
            
            
            
            try? container.encodeIfPresent(defaultTat, forKey: .defaultTat)
            
            
            
            
            try? container.encodeIfPresent(weight, forKey: .weight)
            
            
            
            
            try? container.encodeIfPresent(volumetricWeight, forKey: .volumetricWeight)
            
            
            
            
            try? container.encodeIfPresent(transportType, forKey: .transportType)
            
            
            
            
            try? container.encodeIfPresent(region, forKey: .region)
            
            
            
            
            try? container.encodeIfPresent(deliveryType, forKey: .deliveryType)
            
            
            
            
            try? container.encodeIfPresent(paymentMode, forKey: .paymentMode)
            
            
            
            
            try? container.encodeIfPresent(stage, forKey: .stage)
            
            
            
            
            try? container.encodeIfPresent(statusUpdates, forKey: .statusUpdates)
            
            
            
            
            try? container.encodeIfPresent(ndrAttempts, forKey: .ndrAttempts)
            
            
            
            
            try? container.encodeIfPresent(qcShipmentItemQuantity, forKey: .qcShipmentItemQuantity)
            
            
            
            
            try? container.encodeIfPresent(nonQcShipmentItemQuantity, forKey: .nonQcShipmentItemQuantity)
            
            
            
            
            try? container.encodeIfPresent(feature, forKey: .feature)
            
            
        }
        
    }
}


