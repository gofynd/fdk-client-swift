import Foundation


import Foundation
public extension ApplicationClient {
  
        /*
            Model: UpdateCartShipmentItem
            Used By: PosCart
        */
        class UpdateCartShipmentItem: Codable {
            
            public var articleUid: String
            
            public var quantity: Int?
            
            public var shipmentType: String
            

            public enum CodingKeys: String, CodingKey {
                
                case articleUid = "article_uid"
                
                case quantity = "quantity"
                
                case shipmentType = "shipment_type"
                
            }

            public init(articleUid: String, quantity: Int? = nil, shipmentType: String) {
                
                self.articleUid = articleUid
                
                self.quantity = quantity
                
                self.shipmentType = shipmentType
                
            }

            public func duplicate() -> UpdateCartShipmentItem {
                let dict = self.dictionary!
                let copy = UpdateCartShipmentItem(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                articleUid = try container.decode(String.self, forKey: .articleUid)
                
                
                
                
                do {
                    quantity = try container.decode(Int.self, forKey: .quantity)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                shipmentType = try container.decode(String.self, forKey: .shipmentType)
                
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(articleUid, forKey: .articleUid)
                
                
                
                
                try? container.encodeIfPresent(quantity, forKey: .quantity)
                
                
                
                
                try? container.encodeIfPresent(shipmentType, forKey: .shipmentType)
                
                
            }
            
        }
        
        /*
            Model: UpdateCartShipmentRequest
            Used By: PosCart
        */
        class UpdateCartShipmentRequest: Codable {
            
            public var shipments: [UpdateCartShipmentItem]
            

            public enum CodingKeys: String, CodingKey {
                
                case shipments = "shipments"
                
            }

            public init(shipments: [UpdateCartShipmentItem]) {
                
                self.shipments = shipments
                
            }

            public func duplicate() -> UpdateCartShipmentRequest {
                let dict = self.dictionary!
                let copy = UpdateCartShipmentRequest(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                shipments = try container.decode([UpdateCartShipmentItem].self, forKey: .shipments)
                
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(shipments, forKey: .shipments)
                
                
            }
            
        }
        
        /*
            Model: Files
            Used By: PosCart
        */
        class Files: Codable {
            
            public var values: [String]
            
            public var key: String
            

            public enum CodingKeys: String, CodingKey {
                
                case values = "values"
                
                case key = "key"
                
            }

            public init(key: String, values: [String]) {
                
                self.values = values
                
                self.key = key
                
            }

            public func duplicate() -> Files {
                let dict = self.dictionary!
                let copy = Files(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                values = try container.decode([String].self, forKey: .values)
                
                
                
                
                key = try container.decode(String.self, forKey: .key)
                
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(values, forKey: .values)
                
                
                
                
                try? container.encodeIfPresent(key, forKey: .key)
                
                
            }
            
        }
        
        /*
            Model: CartPosCheckoutDetailRequest
            Used By: PosCart
        */
        class CartPosCheckoutDetailRequest: Codable {
            
            public var paymentMode: String
            
            public var callbackUrl: String?
            
            public var meta: [String: Any]?
            
            public var extraMeta: [String: Any]?
            
            public var deliveryAddress: [String: Any]?
            
            public var merchantCode: String?
            
            public var orderType: String
            
            public var paymentAutoConfirm: Bool?
            
            public var billingAddress: [String: Any]?
            
            public var addressId: String?
            
            public var paymentParams: [String: Any]?
            
            public var pos: Bool?
            
            public var files: [Files]?
            
            public var pickAtStoreUid: Int?
            
            public var paymentIdentifier: String?
            
            public var orderingStore: Int?
            
            public var billingAddressId: String?
            
            public var aggregator: String?
            
            public var staff: StaffCheckout?
            

            public enum CodingKeys: String, CodingKey {
                
                case paymentMode = "payment_mode"
                
                case callbackUrl = "callback_url"
                
                case meta = "meta"
                
                case extraMeta = "extra_meta"
                
                case deliveryAddress = "delivery_address"
                
                case merchantCode = "merchant_code"
                
                case orderType = "order_type"
                
                case paymentAutoConfirm = "payment_auto_confirm"
                
                case billingAddress = "billing_address"
                
                case addressId = "address_id"
                
                case paymentParams = "payment_params"
                
                case pos = "pos"
                
                case files = "files"
                
                case pickAtStoreUid = "pick_at_store_uid"
                
                case paymentIdentifier = "payment_identifier"
                
                case orderingStore = "ordering_store"
                
                case billingAddressId = "billing_address_id"
                
                case aggregator = "aggregator"
                
                case staff = "staff"
                
            }

            public init(addressId: String? = nil, aggregator: String? = nil, billingAddress: [String: Any]? = nil, billingAddressId: String? = nil, callbackUrl: String? = nil, deliveryAddress: [String: Any]? = nil, extraMeta: [String: Any]? = nil, files: [Files]? = nil, merchantCode: String? = nil, meta: [String: Any]? = nil, orderingStore: Int? = nil, orderType: String, paymentAutoConfirm: Bool? = nil, paymentIdentifier: String? = nil, paymentMode: String, paymentParams: [String: Any]? = nil, pickAtStoreUid: Int? = nil, pos: Bool? = nil, staff: StaffCheckout? = nil) {
                
                self.paymentMode = paymentMode
                
                self.callbackUrl = callbackUrl
                
                self.meta = meta
                
                self.extraMeta = extraMeta
                
                self.deliveryAddress = deliveryAddress
                
                self.merchantCode = merchantCode
                
                self.orderType = orderType
                
                self.paymentAutoConfirm = paymentAutoConfirm
                
                self.billingAddress = billingAddress
                
                self.addressId = addressId
                
                self.paymentParams = paymentParams
                
                self.pos = pos
                
                self.files = files
                
                self.pickAtStoreUid = pickAtStoreUid
                
                self.paymentIdentifier = paymentIdentifier
                
                self.orderingStore = orderingStore
                
                self.billingAddressId = billingAddressId
                
                self.aggregator = aggregator
                
                self.staff = staff
                
            }

            public func duplicate() -> CartPosCheckoutDetailRequest {
                let dict = self.dictionary!
                let copy = CartPosCheckoutDetailRequest(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                paymentMode = try container.decode(String.self, forKey: .paymentMode)
                
                
                
                
                do {
                    callbackUrl = try container.decode(String.self, forKey: .callbackUrl)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    meta = try container.decode([String: Any].self, forKey: .meta)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    extraMeta = try container.decode([String: Any].self, forKey: .extraMeta)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    deliveryAddress = try container.decode([String: Any].self, forKey: .deliveryAddress)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    merchantCode = try container.decode(String.self, forKey: .merchantCode)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                orderType = try container.decode(String.self, forKey: .orderType)
                
                
                
                
                do {
                    paymentAutoConfirm = try container.decode(Bool.self, forKey: .paymentAutoConfirm)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    billingAddress = try container.decode([String: Any].self, forKey: .billingAddress)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    addressId = try container.decode(String.self, forKey: .addressId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    paymentParams = try container.decode([String: Any].self, forKey: .paymentParams)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    pos = try container.decode(Bool.self, forKey: .pos)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    files = try container.decode([Files].self, forKey: .files)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    pickAtStoreUid = try container.decode(Int.self, forKey: .pickAtStoreUid)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    paymentIdentifier = try container.decode(String.self, forKey: .paymentIdentifier)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    orderingStore = try container.decode(Int.self, forKey: .orderingStore)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    billingAddressId = try container.decode(String.self, forKey: .billingAddressId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    aggregator = try container.decode(String.self, forKey: .aggregator)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    staff = try container.decode(StaffCheckout.self, forKey: .staff)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(paymentMode, forKey: .paymentMode)
                
                
                
                
                try? container.encode(callbackUrl, forKey: .callbackUrl)
                
                
                
                
                try? container.encodeIfPresent(meta, forKey: .meta)
                
                
                
                
                try? container.encodeIfPresent(extraMeta, forKey: .extraMeta)
                
                
                
                
                try? container.encodeIfPresent(deliveryAddress, forKey: .deliveryAddress)
                
                
                
                
                try? container.encodeIfPresent(merchantCode, forKey: .merchantCode)
                
                
                
                
                try? container.encodeIfPresent(orderType, forKey: .orderType)
                
                
                
                
                try? container.encodeIfPresent(paymentAutoConfirm, forKey: .paymentAutoConfirm)
                
                
                
                
                try? container.encodeIfPresent(billingAddress, forKey: .billingAddress)
                
                
                
                
                try? container.encodeIfPresent(addressId, forKey: .addressId)
                
                
                
                
                try? container.encode(paymentParams, forKey: .paymentParams)
                
                
                
                
                try? container.encodeIfPresent(pos, forKey: .pos)
                
                
                
                
                try? container.encodeIfPresent(files, forKey: .files)
                
                
                
                
                try? container.encode(pickAtStoreUid, forKey: .pickAtStoreUid)
                
                
                
                
                try? container.encode(paymentIdentifier, forKey: .paymentIdentifier)
                
                
                
                
                try? container.encode(orderingStore, forKey: .orderingStore)
                
                
                
                
                try? container.encodeIfPresent(billingAddressId, forKey: .billingAddressId)
                
                
                
                
                try? container.encodeIfPresent(aggregator, forKey: .aggregator)
                
                
                
                
                try? container.encodeIfPresent(staff, forKey: .staff)
                
                
            }
            
        }
        
        /*
            Model: CartDeliveryModesResponse
            Used By: PosCart
        */
        class CartDeliveryModesResponse: Codable {
            
            public var pickupStores: [Int]?
            
            public var availableModes: [String]?
            

            public enum CodingKeys: String, CodingKey {
                
                case pickupStores = "pickup_stores"
                
                case availableModes = "available_modes"
                
            }

            public init(availableModes: [String]? = nil, pickupStores: [Int]? = nil) {
                
                self.pickupStores = pickupStores
                
                self.availableModes = availableModes
                
            }

            public func duplicate() -> CartDeliveryModesResponse {
                let dict = self.dictionary!
                let copy = CartDeliveryModesResponse(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                do {
                    pickupStores = try container.decode([Int].self, forKey: .pickupStores)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    availableModes = try container.decode([String].self, forKey: .availableModes)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(pickupStores, forKey: .pickupStores)
                
                
                
                
                try? container.encodeIfPresent(availableModes, forKey: .availableModes)
                
                
            }
            
        }
        
        /*
            Model: PickupStoreDetail
            Used By: PosCart
        */
        class PickupStoreDetail: Codable {
            
            public var id: Int?
            
            public var storeCode: String?
            
            public var country: String?
            
            public var name: String?
            
            public var landmark: String?
            
            public var city: String?
            
            public var email: String?
            
            public var phone: String?
            
            public var areaCode: String?
            
            public var state: String?
            
            public var uid: Int?
            
            public var areaCodeSlug: String?
            
            public var addressType: String?
            
            public var pincode: Int?
            
            public var address: String?
            
            public var area: String?
            

            public enum CodingKeys: String, CodingKey {
                
                case id = "id"
                
                case storeCode = "store_code"
                
                case country = "country"
                
                case name = "name"
                
                case landmark = "landmark"
                
                case city = "city"
                
                case email = "email"
                
                case phone = "phone"
                
                case areaCode = "area_code"
                
                case state = "state"
                
                case uid = "uid"
                
                case areaCodeSlug = "area_code_slug"
                
                case addressType = "address_type"
                
                case pincode = "pincode"
                
                case address = "address"
                
                case area = "area"
                
            }

            public init(address: String? = nil, addressType: String? = nil, area: String? = nil, areaCode: String? = nil, areaCodeSlug: String? = nil, city: String? = nil, country: String? = nil, email: String? = nil, id: Int? = nil, landmark: String? = nil, name: String? = nil, phone: String? = nil, pincode: Int? = nil, state: String? = nil, storeCode: String? = nil, uid: Int? = nil) {
                
                self.id = id
                
                self.storeCode = storeCode
                
                self.country = country
                
                self.name = name
                
                self.landmark = landmark
                
                self.city = city
                
                self.email = email
                
                self.phone = phone
                
                self.areaCode = areaCode
                
                self.state = state
                
                self.uid = uid
                
                self.areaCodeSlug = areaCodeSlug
                
                self.addressType = addressType
                
                self.pincode = pincode
                
                self.address = address
                
                self.area = area
                
            }

            public func duplicate() -> PickupStoreDetail {
                let dict = self.dictionary!
                let copy = PickupStoreDetail(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                do {
                    id = try container.decode(Int.self, forKey: .id)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    storeCode = try container.decode(String.self, forKey: .storeCode)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    country = try container.decode(String.self, forKey: .country)
                
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
                    landmark = try container.decode(String.self, forKey: .landmark)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    city = try container.decode(String.self, forKey: .city)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    email = try container.decode(String.self, forKey: .email)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    phone = try container.decode(String.self, forKey: .phone)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    areaCode = try container.decode(String.self, forKey: .areaCode)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    state = try container.decode(String.self, forKey: .state)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    uid = try container.decode(Int.self, forKey: .uid)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    areaCodeSlug = try container.decode(String.self, forKey: .areaCodeSlug)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    addressType = try container.decode(String.self, forKey: .addressType)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    pincode = try container.decode(Int.self, forKey: .pincode)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    address = try container.decode(String.self, forKey: .address)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    area = try container.decode(String.self, forKey: .area)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(id, forKey: .id)
                
                
                
                
                try? container.encodeIfPresent(storeCode, forKey: .storeCode)
                
                
                
                
                try? container.encodeIfPresent(country, forKey: .country)
                
                
                
                
                try? container.encodeIfPresent(name, forKey: .name)
                
                
                
                
                try? container.encodeIfPresent(landmark, forKey: .landmark)
                
                
                
                
                try? container.encodeIfPresent(city, forKey: .city)
                
                
                
                
                try? container.encodeIfPresent(email, forKey: .email)
                
                
                
                
                try? container.encodeIfPresent(phone, forKey: .phone)
                
                
                
                
                try? container.encodeIfPresent(areaCode, forKey: .areaCode)
                
                
                
                
                try? container.encodeIfPresent(state, forKey: .state)
                
                
                
                
                try? container.encodeIfPresent(uid, forKey: .uid)
                
                
                
                
                try? container.encodeIfPresent(areaCodeSlug, forKey: .areaCodeSlug)
                
                
                
                
                try? container.encodeIfPresent(addressType, forKey: .addressType)
                
                
                
                
                try? container.encodeIfPresent(pincode, forKey: .pincode)
                
                
                
                
                try? container.encodeIfPresent(address, forKey: .address)
                
                
                
                
                try? container.encodeIfPresent(area, forKey: .area)
                
                
            }
            
        }
        
        /*
            Model: StoreDetailsResponse
            Used By: PosCart
        */
        class StoreDetailsResponse: Codable {
            
            public var items: [PickupStoreDetail]?
            

            public enum CodingKeys: String, CodingKey {
                
                case items = "items"
                
            }

            public init(items: [PickupStoreDetail]? = nil) {
                
                self.items = items
                
            }

            public func duplicate() -> StoreDetailsResponse {
                let dict = self.dictionary!
                let copy = StoreDetailsResponse(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                do {
                    items = try container.decode([PickupStoreDetail].self, forKey: .items)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(items, forKey: .items)
                
                
            }
            
        }
        
}
