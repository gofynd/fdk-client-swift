import Foundation


import Foundation
public extension ApplicationClient {
  
        /*
            Model: AggregatorConfigDetail
            Used By: Payment
        */
        class AggregatorConfigDetail: Codable {
            
            public var userId: String?
            
            public var merchantId: String?
            
            public var secret: String
            
            public var key: String
            
            public var pin: String?
            
            public var verifyApi: String?
            
            public var api: String?
            
            public var sdk: Bool?
            
            public var configType: String
            
            public var merchantKey: String?
            

            public enum CodingKeys: String, CodingKey {
                
                case userId = "user_id"
                
                case merchantId = "merchant_id"
                
                case secret = "secret"
                
                case key = "key"
                
                case pin = "pin"
                
                case verifyApi = "verify_api"
                
                case api = "api"
                
                case sdk = "sdk"
                
                case configType = "config_type"
                
                case merchantKey = "merchant_key"
                
            }

            public init(api: String? = nil, configType: String, key: String, merchantId: String? = nil, merchantKey: String? = nil, pin: String? = nil, sdk: Bool? = nil, secret: String, userId: String? = nil, verifyApi: String? = nil) {
                
                self.userId = userId
                
                self.merchantId = merchantId
                
                self.secret = secret
                
                self.key = key
                
                self.pin = pin
                
                self.verifyApi = verifyApi
                
                self.api = api
                
                self.sdk = sdk
                
                self.configType = configType
                
                self.merchantKey = merchantKey
                
            }

            public func duplicate() -> AggregatorConfigDetail {
                let dict = self.dictionary!
                let copy = AggregatorConfigDetail(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                do {
                    userId = try container.decode(String.self, forKey: .userId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    merchantId = try container.decode(String.self, forKey: .merchantId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                secret = try container.decode(String.self, forKey: .secret)
                
                
                
                
                key = try container.decode(String.self, forKey: .key)
                
                
                
                
                do {
                    pin = try container.decode(String.self, forKey: .pin)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    verifyApi = try container.decode(String.self, forKey: .verifyApi)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    api = try container.decode(String.self, forKey: .api)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    sdk = try container.decode(Bool.self, forKey: .sdk)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                configType = try container.decode(String.self, forKey: .configType)
                
                
                
                
                do {
                    merchantKey = try container.decode(String.self, forKey: .merchantKey)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encode(userId, forKey: .userId)
                
                
                
                
                try? container.encode(merchantId, forKey: .merchantId)
                
                
                
                
                try? container.encodeIfPresent(secret, forKey: .secret)
                
                
                
                
                try? container.encodeIfPresent(key, forKey: .key)
                
                
                
                
                try? container.encode(pin, forKey: .pin)
                
                
                
                
                try? container.encode(verifyApi, forKey: .verifyApi)
                
                
                
                
                try? container.encode(api, forKey: .api)
                
                
                
                
                try? container.encode(sdk, forKey: .sdk)
                
                
                
                
                try? container.encodeIfPresent(configType, forKey: .configType)
                
                
                
                
                try? container.encode(merchantKey, forKey: .merchantKey)
                
                
            }
            
        }
        
        /*
            Model: AggregatorsConfigDetailResponse
            Used By: Payment
        */
        class AggregatorsConfigDetailResponse: Codable {
            
            public var juspay: AggregatorConfigDetail?
            
            public var stripe: AggregatorConfigDetail?
            
            public var payumoney: AggregatorConfigDetail?
            
            public var ccavenue: AggregatorConfigDetail?
            
            public var mswipe: AggregatorConfigDetail?
            
            public var rupifi: AggregatorConfigDetail?
            
            public var env: String
            
            public var simpl: AggregatorConfigDetail?
            
            public var success: Bool
            
            public var razorpay: AggregatorConfigDetail?
            

            public enum CodingKeys: String, CodingKey {
                
                case juspay = "juspay"
                
                case stripe = "stripe"
                
                case payumoney = "payumoney"
                
                case ccavenue = "ccavenue"
                
                case mswipe = "mswipe"
                
                case rupifi = "rupifi"
                
                case env = "env"
                
                case simpl = "simpl"
                
                case success = "success"
                
                case razorpay = "razorpay"
                
            }

            public init(ccavenue: AggregatorConfigDetail? = nil, env: String, juspay: AggregatorConfigDetail? = nil, mswipe: AggregatorConfigDetail? = nil, payumoney: AggregatorConfigDetail? = nil, razorpay: AggregatorConfigDetail? = nil, rupifi: AggregatorConfigDetail? = nil, simpl: AggregatorConfigDetail? = nil, stripe: AggregatorConfigDetail? = nil, success: Bool) {
                
                self.juspay = juspay
                
                self.stripe = stripe
                
                self.payumoney = payumoney
                
                self.ccavenue = ccavenue
                
                self.mswipe = mswipe
                
                self.rupifi = rupifi
                
                self.env = env
                
                self.simpl = simpl
                
                self.success = success
                
                self.razorpay = razorpay
                
            }

            public func duplicate() -> AggregatorsConfigDetailResponse {
                let dict = self.dictionary!
                let copy = AggregatorsConfigDetailResponse(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                do {
                    juspay = try container.decode(AggregatorConfigDetail.self, forKey: .juspay)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    stripe = try container.decode(AggregatorConfigDetail.self, forKey: .stripe)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    payumoney = try container.decode(AggregatorConfigDetail.self, forKey: .payumoney)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    ccavenue = try container.decode(AggregatorConfigDetail.self, forKey: .ccavenue)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    mswipe = try container.decode(AggregatorConfigDetail.self, forKey: .mswipe)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    rupifi = try container.decode(AggregatorConfigDetail.self, forKey: .rupifi)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                env = try container.decode(String.self, forKey: .env)
                
                
                
                
                do {
                    simpl = try container.decode(AggregatorConfigDetail.self, forKey: .simpl)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                success = try container.decode(Bool.self, forKey: .success)
                
                
                
                
                do {
                    razorpay = try container.decode(AggregatorConfigDetail.self, forKey: .razorpay)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(juspay, forKey: .juspay)
                
                
                
                
                try? container.encodeIfPresent(stripe, forKey: .stripe)
                
                
                
                
                try? container.encodeIfPresent(payumoney, forKey: .payumoney)
                
                
                
                
                try? container.encodeIfPresent(ccavenue, forKey: .ccavenue)
                
                
                
                
                try? container.encodeIfPresent(mswipe, forKey: .mswipe)
                
                
                
                
                try? container.encodeIfPresent(rupifi, forKey: .rupifi)
                
                
                
                
                try? container.encodeIfPresent(env, forKey: .env)
                
                
                
                
                try? container.encodeIfPresent(simpl, forKey: .simpl)
                
                
                
                
                try? container.encodeIfPresent(success, forKey: .success)
                
                
                
                
                try? container.encodeIfPresent(razorpay, forKey: .razorpay)
                
                
            }
            
        }
        
        /*
            Model: ErrorCodeAndDescription
            Used By: Payment
        */
        class ErrorCodeAndDescription: Codable {
            
            public var description: String
            
            public var code: String
            

            public enum CodingKeys: String, CodingKey {
                
                case description = "description"
                
                case code = "code"
                
            }

            public init(code: String, description: String) {
                
                self.description = description
                
                self.code = code
                
            }

            public func duplicate() -> ErrorCodeAndDescription {
                let dict = self.dictionary!
                let copy = ErrorCodeAndDescription(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                description = try container.decode(String.self, forKey: .description)
                
                
                
                
                code = try container.decode(String.self, forKey: .code)
                
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(description, forKey: .description)
                
                
                
                
                try? container.encodeIfPresent(code, forKey: .code)
                
                
            }
            
        }
        
        /*
            Model: HttpErrorCodeAndResponse
            Used By: Payment
        */
        class HttpErrorCodeAndResponse: Codable {
            
            public var success: Bool
            
            public var error: ErrorCodeAndDescription
            

            public enum CodingKeys: String, CodingKey {
                
                case success = "success"
                
                case error = "error"
                
            }

            public init(error: ErrorCodeAndDescription, success: Bool) {
                
                self.success = success
                
                self.error = error
                
            }

            public func duplicate() -> HttpErrorCodeAndResponse {
                let dict = self.dictionary!
                let copy = HttpErrorCodeAndResponse(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                success = try container.decode(Bool.self, forKey: .success)
                
                
                
                
                error = try container.decode(ErrorCodeAndDescription.self, forKey: .error)
                
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(success, forKey: .success)
                
                
                
                
                try? container.encodeIfPresent(error, forKey: .error)
                
                
            }
            
        }
        
        /*
            Model: AttachCardRequest
            Used By: Payment
        */
        class AttachCardRequest: Codable {
            
            public var nickname: String?
            
            public var nameOnCard: String?
            
            public var cardId: String
            
            public var refresh: Bool?
            

            public enum CodingKeys: String, CodingKey {
                
                case nickname = "nickname"
                
                case nameOnCard = "name_on_card"
                
                case cardId = "card_id"
                
                case refresh = "refresh"
                
            }

            public init(cardId: String, nameOnCard: String? = nil, nickname: String? = nil, refresh: Bool? = nil) {
                
                self.nickname = nickname
                
                self.nameOnCard = nameOnCard
                
                self.cardId = cardId
                
                self.refresh = refresh
                
            }

            public func duplicate() -> AttachCardRequest {
                let dict = self.dictionary!
                let copy = AttachCardRequest(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                do {
                    nickname = try container.decode(String.self, forKey: .nickname)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    nameOnCard = try container.decode(String.self, forKey: .nameOnCard)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                cardId = try container.decode(String.self, forKey: .cardId)
                
                
                
                
                do {
                    refresh = try container.decode(Bool.self, forKey: .refresh)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(nickname, forKey: .nickname)
                
                
                
                
                try? container.encodeIfPresent(nameOnCard, forKey: .nameOnCard)
                
                
                
                
                try? container.encode(cardId, forKey: .cardId)
                
                
                
                
                try? container.encode(refresh, forKey: .refresh)
                
                
            }
            
        }
        
        /*
            Model: AttachCardsResponse
            Used By: Payment
        */
        class AttachCardsResponse: Codable {
            
            public var success: Bool
            
            public var message: String?
            
            public var data: [String: Any]
            

            public enum CodingKeys: String, CodingKey {
                
                case success = "success"
                
                case message = "message"
                
                case data = "data"
                
            }

            public init(data: [String: Any], message: String? = nil, success: Bool) {
                
                self.success = success
                
                self.message = message
                
                self.data = data
                
            }

            public func duplicate() -> AttachCardsResponse {
                let dict = self.dictionary!
                let copy = AttachCardsResponse(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                success = try container.decode(Bool.self, forKey: .success)
                
                
                
                
                do {
                    message = try container.decode(String.self, forKey: .message)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                data = try container.decode([String: Any].self, forKey: .data)
                
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(success, forKey: .success)
                
                
                
                
                try? container.encodeIfPresent(message, forKey: .message)
                
                
                
                
                try? container.encodeIfPresent(data, forKey: .data)
                
                
            }
            
        }
        
        /*
            Model: CardPaymentGateway
            Used By: Payment
        */
        class CardPaymentGateway: Codable {
            
            public var aggregator: String
            
            public var customerId: String?
            
            public var api: String?
            

            public enum CodingKeys: String, CodingKey {
                
                case aggregator = "aggregator"
                
                case customerId = "customer_id"
                
                case api = "api"
                
            }

            public init(aggregator: String, api: String? = nil, customerId: String? = nil) {
                
                self.aggregator = aggregator
                
                self.customerId = customerId
                
                self.api = api
                
            }

            public func duplicate() -> CardPaymentGateway {
                let dict = self.dictionary!
                let copy = CardPaymentGateway(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                aggregator = try container.decode(String.self, forKey: .aggregator)
                
                
                
                
                do {
                    customerId = try container.decode(String.self, forKey: .customerId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    api = try container.decode(String.self, forKey: .api)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(aggregator, forKey: .aggregator)
                
                
                
                
                try? container.encode(customerId, forKey: .customerId)
                
                
                
                
                try? container.encode(api, forKey: .api)
                
                
            }
            
        }
        
        /*
            Model: ActiveCardPaymentGatewayResponse
            Used By: Payment
        */
        class ActiveCardPaymentGatewayResponse: Codable {
            
            public var success: Bool
            
            public var cards: CardPaymentGateway
            
            public var message: String
            

            public enum CodingKeys: String, CodingKey {
                
                case success = "success"
                
                case cards = "cards"
                
                case message = "message"
                
            }

            public init(cards: CardPaymentGateway, message: String, success: Bool) {
                
                self.success = success
                
                self.cards = cards
                
                self.message = message
                
            }

            public func duplicate() -> ActiveCardPaymentGatewayResponse {
                let dict = self.dictionary!
                let copy = ActiveCardPaymentGatewayResponse(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                success = try container.decode(Bool.self, forKey: .success)
                
                
                
                
                cards = try container.decode(CardPaymentGateway.self, forKey: .cards)
                
                
                
                
                message = try container.decode(String.self, forKey: .message)
                
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(success, forKey: .success)
                
                
                
                
                try? container.encodeIfPresent(cards, forKey: .cards)
                
                
                
                
                try? container.encodeIfPresent(message, forKey: .message)
                
                
            }
            
        }
        
        /*
            Model: Card
            Used By: Payment
        */
        class Card: Codable {
            
            public var cardReference: String?
            
            public var expMonth: Int?
            
            public var cardIssuer: String?
            
            public var expired: Bool?
            
            public var cardNumber: String?
            
            public var nickname: String?
            
            public var cardName: String?
            
            public var expYear: Int?
            
            public var cardFingerprint: String?
            
            public var cardIsin: String?
            
            public var cardType: String?
            
            public var cardId: String?
            
            public var cardBrandImage: String?
            
            public var cardToken: String?
            
            public var aggregatorName: String
            
            public var cardBrand: String?
            

            public enum CodingKeys: String, CodingKey {
                
                case cardReference = "card_reference"
                
                case expMonth = "exp_month"
                
                case cardIssuer = "card_issuer"
                
                case expired = "expired"
                
                case cardNumber = "card_number"
                
                case nickname = "nickname"
                
                case cardName = "card_name"
                
                case expYear = "exp_year"
                
                case cardFingerprint = "card_fingerprint"
                
                case cardIsin = "card_isin"
                
                case cardType = "card_type"
                
                case cardId = "card_id"
                
                case cardBrandImage = "card_brand_image"
                
                case cardToken = "card_token"
                
                case aggregatorName = "aggregator_name"
                
                case cardBrand = "card_brand"
                
            }

            public init(aggregatorName: String, cardBrand: String? = nil, cardBrandImage: String? = nil, cardFingerprint: String? = nil, cardId: String? = nil, cardIsin: String? = nil, cardIssuer: String? = nil, cardName: String? = nil, cardNumber: String? = nil, cardReference: String? = nil, cardToken: String? = nil, cardType: String? = nil, expired: Bool? = nil, expMonth: Int? = nil, expYear: Int? = nil, nickname: String? = nil) {
                
                self.cardReference = cardReference
                
                self.expMonth = expMonth
                
                self.cardIssuer = cardIssuer
                
                self.expired = expired
                
                self.cardNumber = cardNumber
                
                self.nickname = nickname
                
                self.cardName = cardName
                
                self.expYear = expYear
                
                self.cardFingerprint = cardFingerprint
                
                self.cardIsin = cardIsin
                
                self.cardType = cardType
                
                self.cardId = cardId
                
                self.cardBrandImage = cardBrandImage
                
                self.cardToken = cardToken
                
                self.aggregatorName = aggregatorName
                
                self.cardBrand = cardBrand
                
            }

            public func duplicate() -> Card {
                let dict = self.dictionary!
                let copy = Card(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                do {
                    cardReference = try container.decode(String.self, forKey: .cardReference)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    expMonth = try container.decode(Int.self, forKey: .expMonth)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    cardIssuer = try container.decode(String.self, forKey: .cardIssuer)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    expired = try container.decode(Bool.self, forKey: .expired)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    cardNumber = try container.decode(String.self, forKey: .cardNumber)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    nickname = try container.decode(String.self, forKey: .nickname)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    cardName = try container.decode(String.self, forKey: .cardName)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    expYear = try container.decode(Int.self, forKey: .expYear)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    cardFingerprint = try container.decode(String.self, forKey: .cardFingerprint)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    cardIsin = try container.decode(String.self, forKey: .cardIsin)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    cardType = try container.decode(String.self, forKey: .cardType)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    cardId = try container.decode(String.self, forKey: .cardId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    cardBrandImage = try container.decode(String.self, forKey: .cardBrandImage)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    cardToken = try container.decode(String.self, forKey: .cardToken)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                aggregatorName = try container.decode(String.self, forKey: .aggregatorName)
                
                
                
                
                do {
                    cardBrand = try container.decode(String.self, forKey: .cardBrand)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encode(cardReference, forKey: .cardReference)
                
                
                
                
                try? container.encode(expMonth, forKey: .expMonth)
                
                
                
                
                try? container.encode(cardIssuer, forKey: .cardIssuer)
                
                
                
                
                try? container.encode(expired, forKey: .expired)
                
                
                
                
                try? container.encode(cardNumber, forKey: .cardNumber)
                
                
                
                
                try? container.encode(nickname, forKey: .nickname)
                
                
                
                
                try? container.encode(cardName, forKey: .cardName)
                
                
                
                
                try? container.encode(expYear, forKey: .expYear)
                
                
                
                
                try? container.encode(cardFingerprint, forKey: .cardFingerprint)
                
                
                
                
                try? container.encode(cardIsin, forKey: .cardIsin)
                
                
                
                
                try? container.encode(cardType, forKey: .cardType)
                
                
                
                
                try? container.encode(cardId, forKey: .cardId)
                
                
                
                
                try? container.encode(cardBrandImage, forKey: .cardBrandImage)
                
                
                
                
                try? container.encode(cardToken, forKey: .cardToken)
                
                
                
                
                try? container.encodeIfPresent(aggregatorName, forKey: .aggregatorName)
                
                
                
                
                try? container.encode(cardBrand, forKey: .cardBrand)
                
                
            }
            
        }
        
        /*
            Model: ListCardsResponse
            Used By: Payment
        */
        class ListCardsResponse: Codable {
            
            public var success: Bool
            
            public var message: String
            
            public var data: [Card]?
            

            public enum CodingKeys: String, CodingKey {
                
                case success = "success"
                
                case message = "message"
                
                case data = "data"
                
            }

            public init(data: [Card]? = nil, message: String, success: Bool) {
                
                self.success = success
                
                self.message = message
                
                self.data = data
                
            }

            public func duplicate() -> ListCardsResponse {
                let dict = self.dictionary!
                let copy = ListCardsResponse(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                success = try container.decode(Bool.self, forKey: .success)
                
                
                
                
                message = try container.decode(String.self, forKey: .message)
                
                
                
                
                do {
                    data = try container.decode([Card].self, forKey: .data)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(success, forKey: .success)
                
                
                
                
                try? container.encodeIfPresent(message, forKey: .message)
                
                
                
                
                try? container.encodeIfPresent(data, forKey: .data)
                
                
            }
            
        }
        
        /*
            Model: DeletehCardRequest
            Used By: Payment
        */
        class DeletehCardRequest: Codable {
            
            public var cardId: String
            

            public enum CodingKeys: String, CodingKey {
                
                case cardId = "card_id"
                
            }

            public init(cardId: String) {
                
                self.cardId = cardId
                
            }

            public func duplicate() -> DeletehCardRequest {
                let dict = self.dictionary!
                let copy = DeletehCardRequest(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                cardId = try container.decode(String.self, forKey: .cardId)
                
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encode(cardId, forKey: .cardId)
                
                
            }
            
        }
        
        /*
            Model: DeleteCardsResponse
            Used By: Payment
        */
        class DeleteCardsResponse: Codable {
            
            public var success: Bool
            
            public var message: String?
            

            public enum CodingKeys: String, CodingKey {
                
                case success = "success"
                
                case message = "message"
                
            }

            public init(message: String? = nil, success: Bool) {
                
                self.success = success
                
                self.message = message
                
            }

            public func duplicate() -> DeleteCardsResponse {
                let dict = self.dictionary!
                let copy = DeleteCardsResponse(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                success = try container.decode(Bool.self, forKey: .success)
                
                
                
                
                do {
                    message = try container.decode(String.self, forKey: .message)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(success, forKey: .success)
                
                
                
                
                try? container.encode(message, forKey: .message)
                
                
            }
            
        }
        
        /*
            Model: ValidateCustomerRequest
            Used By: Payment
        */
        class ValidateCustomerRequest: Codable {
            
            public var phoneNumber: String
            
            public var payload: String
            
            public var merchantParams: [String: Any]
            
            public var transactionAmountInPaise: Int
            
            public var aggregator: String
            

            public enum CodingKeys: String, CodingKey {
                
                case phoneNumber = "phone_number"
                
                case payload = "payload"
                
                case merchantParams = "merchant_params"
                
                case transactionAmountInPaise = "transaction_amount_in_paise"
                
                case aggregator = "aggregator"
                
            }

            public init(aggregator: String, merchantParams: [String: Any], payload: String, phoneNumber: String, transactionAmountInPaise: Int) {
                
                self.phoneNumber = phoneNumber
                
                self.payload = payload
                
                self.merchantParams = merchantParams
                
                self.transactionAmountInPaise = transactionAmountInPaise
                
                self.aggregator = aggregator
                
            }

            public func duplicate() -> ValidateCustomerRequest {
                let dict = self.dictionary!
                let copy = ValidateCustomerRequest(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                phoneNumber = try container.decode(String.self, forKey: .phoneNumber)
                
                
                
                
                payload = try container.decode(String.self, forKey: .payload)
                
                
                
                
                merchantParams = try container.decode([String: Any].self, forKey: .merchantParams)
                
                
                
                
                transactionAmountInPaise = try container.decode(Int.self, forKey: .transactionAmountInPaise)
                
                
                
                
                aggregator = try container.decode(String.self, forKey: .aggregator)
                
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(phoneNumber, forKey: .phoneNumber)
                
                
                
                
                try? container.encode(payload, forKey: .payload)
                
                
                
                
                try? container.encodeIfPresent(merchantParams, forKey: .merchantParams)
                
                
                
                
                try? container.encodeIfPresent(transactionAmountInPaise, forKey: .transactionAmountInPaise)
                
                
                
                
                try? container.encodeIfPresent(aggregator, forKey: .aggregator)
                
                
            }
            
        }
        
        /*
            Model: ValidateCustomerResponse
            Used By: Payment
        */
        class ValidateCustomerResponse: Codable {
            
            public var success: Bool
            
            public var message: String
            
            public var data: [String: Any]
            

            public enum CodingKeys: String, CodingKey {
                
                case success = "success"
                
                case message = "message"
                
                case data = "data"
                
            }

            public init(data: [String: Any], message: String, success: Bool) {
                
                self.success = success
                
                self.message = message
                
                self.data = data
                
            }

            public func duplicate() -> ValidateCustomerResponse {
                let dict = self.dictionary!
                let copy = ValidateCustomerResponse(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                success = try container.decode(Bool.self, forKey: .success)
                
                
                
                
                message = try container.decode(String.self, forKey: .message)
                
                
                
                
                data = try container.decode([String: Any].self, forKey: .data)
                
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(success, forKey: .success)
                
                
                
                
                try? container.encodeIfPresent(message, forKey: .message)
                
                
                
                
                try? container.encodeIfPresent(data, forKey: .data)
                
                
            }
            
        }
        
        /*
            Model: ChargeCustomerRequest
            Used By: Payment
        */
        class ChargeCustomerRequest: Codable {
            
            public var transactionToken: String?
            
            public var orderId: String
            
            public var aggregator: String
            
            public var amount: Int
            
            public var verified: Bool?
            

            public enum CodingKeys: String, CodingKey {
                
                case transactionToken = "transaction_token"
                
                case orderId = "order_id"
                
                case aggregator = "aggregator"
                
                case amount = "amount"
                
                case verified = "verified"
                
            }

            public init(aggregator: String, amount: Int, orderId: String, transactionToken: String? = nil, verified: Bool? = nil) {
                
                self.transactionToken = transactionToken
                
                self.orderId = orderId
                
                self.aggregator = aggregator
                
                self.amount = amount
                
                self.verified = verified
                
            }

            public func duplicate() -> ChargeCustomerRequest {
                let dict = self.dictionary!
                let copy = ChargeCustomerRequest(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                do {
                    transactionToken = try container.decode(String.self, forKey: .transactionToken)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                orderId = try container.decode(String.self, forKey: .orderId)
                
                
                
                
                aggregator = try container.decode(String.self, forKey: .aggregator)
                
                
                
                
                amount = try container.decode(Int.self, forKey: .amount)
                
                
                
                
                do {
                    verified = try container.decode(Bool.self, forKey: .verified)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encode(transactionToken, forKey: .transactionToken)
                
                
                
                
                try? container.encodeIfPresent(orderId, forKey: .orderId)
                
                
                
                
                try? container.encodeIfPresent(aggregator, forKey: .aggregator)
                
                
                
                
                try? container.encode(amount, forKey: .amount)
                
                
                
                
                try? container.encode(verified, forKey: .verified)
                
                
            }
            
        }
        
        /*
            Model: ChargeCustomerResponse
            Used By: Payment
        */
        class ChargeCustomerResponse: Codable {
            
            public var status: String
            
            public var message: String
            
            public var deliveryAddressId: String?
            
            public var orderId: String
            
            public var aggregator: String
            
            public var success: Bool
            
            public var cartId: String?
            

            public enum CodingKeys: String, CodingKey {
                
                case status = "status"
                
                case message = "message"
                
                case deliveryAddressId = "delivery_address_id"
                
                case orderId = "order_id"
                
                case aggregator = "aggregator"
                
                case success = "success"
                
                case cartId = "cart_id"
                
            }

            public init(aggregator: String, cartId: String? = nil, deliveryAddressId: String? = nil, message: String, orderId: String, status: String, success: Bool) {
                
                self.status = status
                
                self.message = message
                
                self.deliveryAddressId = deliveryAddressId
                
                self.orderId = orderId
                
                self.aggregator = aggregator
                
                self.success = success
                
                self.cartId = cartId
                
            }

            public func duplicate() -> ChargeCustomerResponse {
                let dict = self.dictionary!
                let copy = ChargeCustomerResponse(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                status = try container.decode(String.self, forKey: .status)
                
                
                
                
                message = try container.decode(String.self, forKey: .message)
                
                
                
                
                do {
                    deliveryAddressId = try container.decode(String.self, forKey: .deliveryAddressId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                orderId = try container.decode(String.self, forKey: .orderId)
                
                
                
                
                aggregator = try container.decode(String.self, forKey: .aggregator)
                
                
                
                
                success = try container.decode(Bool.self, forKey: .success)
                
                
                
                
                do {
                    cartId = try container.decode(String.self, forKey: .cartId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(status, forKey: .status)
                
                
                
                
                try? container.encodeIfPresent(message, forKey: .message)
                
                
                
                
                try? container.encode(deliveryAddressId, forKey: .deliveryAddressId)
                
                
                
                
                try? container.encodeIfPresent(orderId, forKey: .orderId)
                
                
                
                
                try? container.encodeIfPresent(aggregator, forKey: .aggregator)
                
                
                
                
                try? container.encodeIfPresent(success, forKey: .success)
                
                
                
                
                try? container.encode(cartId, forKey: .cartId)
                
                
            }
            
        }
        
        /*
            Model: PaymentInitializationRequest
            Used By: Payment
        */
        class PaymentInitializationRequest: Codable {
            
            public var merchantOrderId: String
            
            public var contact: String
            
            public var razorpayPaymentId: String?
            
            public var vpa: String?
            
            public var email: String
            
            public var method: String
            
            public var customerId: String
            
            public var orderId: String
            
            public var aggregator: String
            
            public var amount: Int
            
            public var timeout: Int?
            
            public var currency: String
            

            public enum CodingKeys: String, CodingKey {
                
                case merchantOrderId = "merchant_order_id"
                
                case contact = "contact"
                
                case razorpayPaymentId = "razorpay_payment_id"
                
                case vpa = "vpa"
                
                case email = "email"
                
                case method = "method"
                
                case customerId = "customer_id"
                
                case orderId = "order_id"
                
                case aggregator = "aggregator"
                
                case amount = "amount"
                
                case timeout = "timeout"
                
                case currency = "currency"
                
            }

            public init(aggregator: String, amount: Int, contact: String, currency: String, customerId: String, email: String, merchantOrderId: String, method: String, orderId: String, razorpayPaymentId: String? = nil, timeout: Int? = nil, vpa: String? = nil) {
                
                self.merchantOrderId = merchantOrderId
                
                self.contact = contact
                
                self.razorpayPaymentId = razorpayPaymentId
                
                self.vpa = vpa
                
                self.email = email
                
                self.method = method
                
                self.customerId = customerId
                
                self.orderId = orderId
                
                self.aggregator = aggregator
                
                self.amount = amount
                
                self.timeout = timeout
                
                self.currency = currency
                
            }

            public func duplicate() -> PaymentInitializationRequest {
                let dict = self.dictionary!
                let copy = PaymentInitializationRequest(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                merchantOrderId = try container.decode(String.self, forKey: .merchantOrderId)
                
                
                
                
                contact = try container.decode(String.self, forKey: .contact)
                
                
                
                
                do {
                    razorpayPaymentId = try container.decode(String.self, forKey: .razorpayPaymentId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    vpa = try container.decode(String.self, forKey: .vpa)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                email = try container.decode(String.self, forKey: .email)
                
                
                
                
                method = try container.decode(String.self, forKey: .method)
                
                
                
                
                customerId = try container.decode(String.self, forKey: .customerId)
                
                
                
                
                orderId = try container.decode(String.self, forKey: .orderId)
                
                
                
                
                aggregator = try container.decode(String.self, forKey: .aggregator)
                
                
                
                
                amount = try container.decode(Int.self, forKey: .amount)
                
                
                
                
                do {
                    timeout = try container.decode(Int.self, forKey: .timeout)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                currency = try container.decode(String.self, forKey: .currency)
                
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(merchantOrderId, forKey: .merchantOrderId)
                
                
                
                
                try? container.encodeIfPresent(contact, forKey: .contact)
                
                
                
                
                try? container.encode(razorpayPaymentId, forKey: .razorpayPaymentId)
                
                
                
                
                try? container.encode(vpa, forKey: .vpa)
                
                
                
                
                try? container.encodeIfPresent(email, forKey: .email)
                
                
                
                
                try? container.encodeIfPresent(method, forKey: .method)
                
                
                
                
                try? container.encodeIfPresent(customerId, forKey: .customerId)
                
                
                
                
                try? container.encodeIfPresent(orderId, forKey: .orderId)
                
                
                
                
                try? container.encodeIfPresent(aggregator, forKey: .aggregator)
                
                
                
                
                try? container.encode(amount, forKey: .amount)
                
                
                
                
                try? container.encode(timeout, forKey: .timeout)
                
                
                
                
                try? container.encodeIfPresent(currency, forKey: .currency)
                
                
            }
            
        }
        
        /*
            Model: PaymentInitializationResponse
            Used By: Payment
        */
        class PaymentInitializationResponse: Codable {
            
            public var merchantOrderId: String
            
            public var upiPollUrl: String?
            
            public var vpa: String?
            
            public var status: String?
            
            public var razorpayPaymentId: String?
            
            public var method: String
            
            public var bqrImage: String?
            
            public var aggregatorOrderId: String?
            
            public var customerId: String?
            
            public var aggregator: String
            
            public var success: Bool
            
            public var amount: Int?
            
            public var timeout: Int?
            
            public var currency: String?
            
            public var virtualId: String?
            
            public var pollingUrl: String
            

            public enum CodingKeys: String, CodingKey {
                
                case merchantOrderId = "merchant_order_id"
                
                case upiPollUrl = "upi_poll_url"
                
                case vpa = "vpa"
                
                case status = "status"
                
                case razorpayPaymentId = "razorpay_payment_id"
                
                case method = "method"
                
                case bqrImage = "bqr_image"
                
                case aggregatorOrderId = "aggregator_order_id"
                
                case customerId = "customer_id"
                
                case aggregator = "aggregator"
                
                case success = "success"
                
                case amount = "amount"
                
                case timeout = "timeout"
                
                case currency = "currency"
                
                case virtualId = "virtual_id"
                
                case pollingUrl = "polling_url"
                
            }

            public init(aggregator: String, aggregatorOrderId: String? = nil, amount: Int? = nil, bqrImage: String? = nil, currency: String? = nil, customerId: String? = nil, merchantOrderId: String, method: String, pollingUrl: String, razorpayPaymentId: String? = nil, status: String? = nil, success: Bool, timeout: Int? = nil, upiPollUrl: String? = nil, virtualId: String? = nil, vpa: String? = nil) {
                
                self.merchantOrderId = merchantOrderId
                
                self.upiPollUrl = upiPollUrl
                
                self.vpa = vpa
                
                self.status = status
                
                self.razorpayPaymentId = razorpayPaymentId
                
                self.method = method
                
                self.bqrImage = bqrImage
                
                self.aggregatorOrderId = aggregatorOrderId
                
                self.customerId = customerId
                
                self.aggregator = aggregator
                
                self.success = success
                
                self.amount = amount
                
                self.timeout = timeout
                
                self.currency = currency
                
                self.virtualId = virtualId
                
                self.pollingUrl = pollingUrl
                
            }

            public func duplicate() -> PaymentInitializationResponse {
                let dict = self.dictionary!
                let copy = PaymentInitializationResponse(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                merchantOrderId = try container.decode(String.self, forKey: .merchantOrderId)
                
                
                
                
                do {
                    upiPollUrl = try container.decode(String.self, forKey: .upiPollUrl)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    vpa = try container.decode(String.self, forKey: .vpa)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    status = try container.decode(String.self, forKey: .status)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    razorpayPaymentId = try container.decode(String.self, forKey: .razorpayPaymentId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                method = try container.decode(String.self, forKey: .method)
                
                
                
                
                do {
                    bqrImage = try container.decode(String.self, forKey: .bqrImage)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    aggregatorOrderId = try container.decode(String.self, forKey: .aggregatorOrderId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    customerId = try container.decode(String.self, forKey: .customerId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                aggregator = try container.decode(String.self, forKey: .aggregator)
                
                
                
                
                success = try container.decode(Bool.self, forKey: .success)
                
                
                
                
                do {
                    amount = try container.decode(Int.self, forKey: .amount)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    timeout = try container.decode(Int.self, forKey: .timeout)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    currency = try container.decode(String.self, forKey: .currency)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    virtualId = try container.decode(String.self, forKey: .virtualId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                pollingUrl = try container.decode(String.self, forKey: .pollingUrl)
                
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(merchantOrderId, forKey: .merchantOrderId)
                
                
                
                
                try? container.encode(upiPollUrl, forKey: .upiPollUrl)
                
                
                
                
                try? container.encode(vpa, forKey: .vpa)
                
                
                
                
                try? container.encodeIfPresent(status, forKey: .status)
                
                
                
                
                try? container.encode(razorpayPaymentId, forKey: .razorpayPaymentId)
                
                
                
                
                try? container.encodeIfPresent(method, forKey: .method)
                
                
                
                
                try? container.encode(bqrImage, forKey: .bqrImage)
                
                
                
                
                try? container.encodeIfPresent(aggregatorOrderId, forKey: .aggregatorOrderId)
                
                
                
                
                try? container.encode(customerId, forKey: .customerId)
                
                
                
                
                try? container.encodeIfPresent(aggregator, forKey: .aggregator)
                
                
                
                
                try? container.encodeIfPresent(success, forKey: .success)
                
                
                
                
                try? container.encode(amount, forKey: .amount)
                
                
                
                
                try? container.encode(timeout, forKey: .timeout)
                
                
                
                
                try? container.encode(currency, forKey: .currency)
                
                
                
                
                try? container.encode(virtualId, forKey: .virtualId)
                
                
                
                
                try? container.encodeIfPresent(pollingUrl, forKey: .pollingUrl)
                
                
            }
            
        }
        
        /*
            Model: PaymentStatusUpdateRequest
            Used By: Payment
        */
        class PaymentStatusUpdateRequest: Codable {
            
            public var merchantOrderId: String
            
            public var contact: String
            
            public var vpa: String
            
            public var email: String
            
            public var status: String
            
            public var method: String
            
            public var customerId: String
            
            public var orderId: String
            
            public var aggregator: String
            
            public var amount: Int
            
            public var currency: String
            

            public enum CodingKeys: String, CodingKey {
                
                case merchantOrderId = "merchant_order_id"
                
                case contact = "contact"
                
                case vpa = "vpa"
                
                case email = "email"
                
                case status = "status"
                
                case method = "method"
                
                case customerId = "customer_id"
                
                case orderId = "order_id"
                
                case aggregator = "aggregator"
                
                case amount = "amount"
                
                case currency = "currency"
                
            }

            public init(aggregator: String, amount: Int, contact: String, currency: String, customerId: String, email: String, merchantOrderId: String, method: String, orderId: String, status: String, vpa: String) {
                
                self.merchantOrderId = merchantOrderId
                
                self.contact = contact
                
                self.vpa = vpa
                
                self.email = email
                
                self.status = status
                
                self.method = method
                
                self.customerId = customerId
                
                self.orderId = orderId
                
                self.aggregator = aggregator
                
                self.amount = amount
                
                self.currency = currency
                
            }

            public func duplicate() -> PaymentStatusUpdateRequest {
                let dict = self.dictionary!
                let copy = PaymentStatusUpdateRequest(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                merchantOrderId = try container.decode(String.self, forKey: .merchantOrderId)
                
                
                
                
                contact = try container.decode(String.self, forKey: .contact)
                
                
                
                
                vpa = try container.decode(String.self, forKey: .vpa)
                
                
                
                
                email = try container.decode(String.self, forKey: .email)
                
                
                
                
                status = try container.decode(String.self, forKey: .status)
                
                
                
                
                method = try container.decode(String.self, forKey: .method)
                
                
                
                
                customerId = try container.decode(String.self, forKey: .customerId)
                
                
                
                
                orderId = try container.decode(String.self, forKey: .orderId)
                
                
                
                
                aggregator = try container.decode(String.self, forKey: .aggregator)
                
                
                
                
                amount = try container.decode(Int.self, forKey: .amount)
                
                
                
                
                currency = try container.decode(String.self, forKey: .currency)
                
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(merchantOrderId, forKey: .merchantOrderId)
                
                
                
                
                try? container.encodeIfPresent(contact, forKey: .contact)
                
                
                
                
                try? container.encodeIfPresent(vpa, forKey: .vpa)
                
                
                
                
                try? container.encodeIfPresent(email, forKey: .email)
                
                
                
                
                try? container.encodeIfPresent(status, forKey: .status)
                
                
                
                
                try? container.encodeIfPresent(method, forKey: .method)
                
                
                
                
                try? container.encodeIfPresent(customerId, forKey: .customerId)
                
                
                
                
                try? container.encodeIfPresent(orderId, forKey: .orderId)
                
                
                
                
                try? container.encodeIfPresent(aggregator, forKey: .aggregator)
                
                
                
                
                try? container.encode(amount, forKey: .amount)
                
                
                
                
                try? container.encodeIfPresent(currency, forKey: .currency)
                
                
            }
            
        }
        
        /*
            Model: PaymentStatusUpdateResponse
            Used By: Payment
        */
        class PaymentStatusUpdateResponse: Codable {
            
            public var status: String
            
            public var retry: Bool
            
            public var aggregatorName: String
            

            public enum CodingKeys: String, CodingKey {
                
                case status = "status"
                
                case retry = "retry"
                
                case aggregatorName = "aggregator_name"
                
            }

            public init(aggregatorName: String, retry: Bool, status: String) {
                
                self.status = status
                
                self.retry = retry
                
                self.aggregatorName = aggregatorName
                
            }

            public func duplicate() -> PaymentStatusUpdateResponse {
                let dict = self.dictionary!
                let copy = PaymentStatusUpdateResponse(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                status = try container.decode(String.self, forKey: .status)
                
                
                
                
                retry = try container.decode(Bool.self, forKey: .retry)
                
                
                
                
                aggregatorName = try container.decode(String.self, forKey: .aggregatorName)
                
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(status, forKey: .status)
                
                
                
                
                try? container.encodeIfPresent(retry, forKey: .retry)
                
                
                
                
                try? container.encodeIfPresent(aggregatorName, forKey: .aggregatorName)
                
                
            }
            
        }
        
        /*
            Model: PaymentModeLogo
            Used By: Payment
        */
        class PaymentModeLogo: Codable {
            
            public var large: String
            
            public var small: String
            

            public enum CodingKeys: String, CodingKey {
                
                case large = "large"
                
                case small = "small"
                
            }

            public init(large: String, small: String) {
                
                self.large = large
                
                self.small = small
                
            }

            public func duplicate() -> PaymentModeLogo {
                let dict = self.dictionary!
                let copy = PaymentModeLogo(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                large = try container.decode(String.self, forKey: .large)
                
                
                
                
                small = try container.decode(String.self, forKey: .small)
                
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(large, forKey: .large)
                
                
                
                
                try? container.encodeIfPresent(small, forKey: .small)
                
                
            }
            
        }
        
        /*
            Model: IntentAppErrorList
            Used By: Payment
        */
        class IntentAppErrorList: Codable {
            
            public var code: String?
            
            public var packageName: String?
            

            public enum CodingKeys: String, CodingKey {
                
                case code = "code"
                
                case packageName = "package_name"
                
            }

            public init(code: String? = nil, packageName: String? = nil) {
                
                self.code = code
                
                self.packageName = packageName
                
            }

            public func duplicate() -> IntentAppErrorList {
                let dict = self.dictionary!
                let copy = IntentAppErrorList(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                do {
                    code = try container.decode(String.self, forKey: .code)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    packageName = try container.decode(String.self, forKey: .packageName)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encode(code, forKey: .code)
                
                
                
                
                try? container.encode(packageName, forKey: .packageName)
                
                
            }
            
        }
        
        /*
            Model: IntentApp
            Used By: Payment
        */
        class IntentApp: Codable {
            
            public var logos: PaymentModeLogo?
            
            public var code: String?
            
            public var packageName: String?
            
            public var displayName: String?
            

            public enum CodingKeys: String, CodingKey {
                
                case logos = "logos"
                
                case code = "code"
                
                case packageName = "package_name"
                
                case displayName = "display_name"
                
            }

            public init(code: String? = nil, displayName: String? = nil, logos: PaymentModeLogo? = nil, packageName: String? = nil) {
                
                self.logos = logos
                
                self.code = code
                
                self.packageName = packageName
                
                self.displayName = displayName
                
            }

            public func duplicate() -> IntentApp {
                let dict = self.dictionary!
                let copy = IntentApp(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                do {
                    logos = try container.decode(PaymentModeLogo.self, forKey: .logos)
                
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
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encode(logos, forKey: .logos)
                
                
                
                
                try? container.encode(code, forKey: .code)
                
                
                
                
                try? container.encode(packageName, forKey: .packageName)
                
                
                
                
                try? container.encode(displayName, forKey: .displayName)
                
                
            }
            
        }
        
        /*
            Model: PaymentModeList
            Used By: Payment
        */
        class PaymentModeList: Codable {
            
            public var cardIssuer: String?
            
            public var intentAppErrorDictList: [IntentAppErrorList]?
            
            public var expYear: Int?
            
            public var merchantCode: String?
            
            public var cardType: String?
            
            public var cardToken: String?
            
            public var aggregatorName: String
            
            public var cardBrand: String?
            
            public var cardReference: String?
            
            public var expMonth: Int?
            
            public var intentFlow: Bool?
            
            public var intentAppErrorList: [String]?
            
            public var cardFingerprint: String?
            
            public var name: String?
            
            public var intentApp: [IntentApp]?
            
            public var logoUrl: PaymentModeLogo?
            
            public var displayName: String?
            
            public var cardName: String?
            
            public var cardIsin: String?
            
            public var cardId: String?
            
            public var cardBrandImage: String?
            
            public var code: String?
            
            public var displayPriority: Int?
            
            public var expired: Bool?
            
            public var cardNumber: String?
            
            public var nickname: String?
            
            public var retryCount: Int?
            
            public var fyndVpa: String?
            
            public var timeout: Int?
            

            public enum CodingKeys: String, CodingKey {
                
                case cardIssuer = "card_issuer"
                
                case intentAppErrorDictList = "intent_app_error_dict_list"
                
                case expYear = "exp_year"
                
                case merchantCode = "merchant_code"
                
                case cardType = "card_type"
                
                case cardToken = "card_token"
                
                case aggregatorName = "aggregator_name"
                
                case cardBrand = "card_brand"
                
                case cardReference = "card_reference"
                
                case expMonth = "exp_month"
                
                case intentFlow = "intent_flow"
                
                case intentAppErrorList = "intent_app_error_list"
                
                case cardFingerprint = "card_fingerprint"
                
                case name = "name"
                
                case intentApp = "intent_app"
                
                case logoUrl = "logo_url"
                
                case displayName = "display_name"
                
                case cardName = "card_name"
                
                case cardIsin = "card_isin"
                
                case cardId = "card_id"
                
                case cardBrandImage = "card_brand_image"
                
                case code = "code"
                
                case displayPriority = "display_priority"
                
                case expired = "expired"
                
                case cardNumber = "card_number"
                
                case nickname = "nickname"
                
                case retryCount = "retry_count"
                
                case fyndVpa = "fynd_vpa"
                
                case timeout = "timeout"
                
            }

            public init(aggregatorName: String, cardBrand: String? = nil, cardBrandImage: String? = nil, cardFingerprint: String? = nil, cardId: String? = nil, cardIsin: String? = nil, cardIssuer: String? = nil, cardName: String? = nil, cardNumber: String? = nil, cardReference: String? = nil, cardToken: String? = nil, cardType: String? = nil, code: String? = nil, displayName: String? = nil, displayPriority: Int? = nil, expired: Bool? = nil, expMonth: Int? = nil, expYear: Int? = nil, fyndVpa: String? = nil, intentApp: [IntentApp]? = nil, intentAppErrorDictList: [IntentAppErrorList]? = nil, intentAppErrorList: [String]? = nil, intentFlow: Bool? = nil, logoUrl: PaymentModeLogo? = nil, merchantCode: String? = nil, name: String? = nil, nickname: String? = nil, retryCount: Int? = nil, timeout: Int? = nil) {
                
                self.cardIssuer = cardIssuer
                
                self.intentAppErrorDictList = intentAppErrorDictList
                
                self.expYear = expYear
                
                self.merchantCode = merchantCode
                
                self.cardType = cardType
                
                self.cardToken = cardToken
                
                self.aggregatorName = aggregatorName
                
                self.cardBrand = cardBrand
                
                self.cardReference = cardReference
                
                self.expMonth = expMonth
                
                self.intentFlow = intentFlow
                
                self.intentAppErrorList = intentAppErrorList
                
                self.cardFingerprint = cardFingerprint
                
                self.name = name
                
                self.intentApp = intentApp
                
                self.logoUrl = logoUrl
                
                self.displayName = displayName
                
                self.cardName = cardName
                
                self.cardIsin = cardIsin
                
                self.cardId = cardId
                
                self.cardBrandImage = cardBrandImage
                
                self.code = code
                
                self.displayPriority = displayPriority
                
                self.expired = expired
                
                self.cardNumber = cardNumber
                
                self.nickname = nickname
                
                self.retryCount = retryCount
                
                self.fyndVpa = fyndVpa
                
                self.timeout = timeout
                
            }

            public func duplicate() -> PaymentModeList {
                let dict = self.dictionary!
                let copy = PaymentModeList(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                do {
                    cardIssuer = try container.decode(String.self, forKey: .cardIssuer)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    intentAppErrorDictList = try container.decode([IntentAppErrorList].self, forKey: .intentAppErrorDictList)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    expYear = try container.decode(Int.self, forKey: .expYear)
                
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
                
                
                
                do {
                    cardType = try container.decode(String.self, forKey: .cardType)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    cardToken = try container.decode(String.self, forKey: .cardToken)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                aggregatorName = try container.decode(String.self, forKey: .aggregatorName)
                
                
                
                
                do {
                    cardBrand = try container.decode(String.self, forKey: .cardBrand)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    cardReference = try container.decode(String.self, forKey: .cardReference)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    expMonth = try container.decode(Int.self, forKey: .expMonth)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    intentFlow = try container.decode(Bool.self, forKey: .intentFlow)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    intentAppErrorList = try container.decode([String].self, forKey: .intentAppErrorList)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    cardFingerprint = try container.decode(String.self, forKey: .cardFingerprint)
                
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
                    intentApp = try container.decode([IntentApp].self, forKey: .intentApp)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    logoUrl = try container.decode(PaymentModeLogo.self, forKey: .logoUrl)
                
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
                    cardName = try container.decode(String.self, forKey: .cardName)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    cardIsin = try container.decode(String.self, forKey: .cardIsin)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    cardId = try container.decode(String.self, forKey: .cardId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    cardBrandImage = try container.decode(String.self, forKey: .cardBrandImage)
                
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
                    displayPriority = try container.decode(Int.self, forKey: .displayPriority)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    expired = try container.decode(Bool.self, forKey: .expired)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    cardNumber = try container.decode(String.self, forKey: .cardNumber)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    nickname = try container.decode(String.self, forKey: .nickname)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    retryCount = try container.decode(Int.self, forKey: .retryCount)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    fyndVpa = try container.decode(String.self, forKey: .fyndVpa)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    timeout = try container.decode(Int.self, forKey: .timeout)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encode(cardIssuer, forKey: .cardIssuer)
                
                
                
                
                try? container.encode(intentAppErrorDictList, forKey: .intentAppErrorDictList)
                
                
                
                
                try? container.encode(expYear, forKey: .expYear)
                
                
                
                
                try? container.encode(merchantCode, forKey: .merchantCode)
                
                
                
                
                try? container.encode(cardType, forKey: .cardType)
                
                
                
                
                try? container.encode(cardToken, forKey: .cardToken)
                
                
                
                
                try? container.encodeIfPresent(aggregatorName, forKey: .aggregatorName)
                
                
                
                
                try? container.encode(cardBrand, forKey: .cardBrand)
                
                
                
                
                try? container.encode(cardReference, forKey: .cardReference)
                
                
                
                
                try? container.encode(expMonth, forKey: .expMonth)
                
                
                
                
                try? container.encode(intentFlow, forKey: .intentFlow)
                
                
                
                
                try? container.encode(intentAppErrorList, forKey: .intentAppErrorList)
                
                
                
                
                try? container.encode(cardFingerprint, forKey: .cardFingerprint)
                
                
                
                
                try? container.encode(name, forKey: .name)
                
                
                
                
                try? container.encode(intentApp, forKey: .intentApp)
                
                
                
                
                try? container.encode(logoUrl, forKey: .logoUrl)
                
                
                
                
                try? container.encode(displayName, forKey: .displayName)
                
                
                
                
                try? container.encode(cardName, forKey: .cardName)
                
                
                
                
                try? container.encode(cardIsin, forKey: .cardIsin)
                
                
                
                
                try? container.encode(cardId, forKey: .cardId)
                
                
                
                
                try? container.encode(cardBrandImage, forKey: .cardBrandImage)
                
                
                
                
                try? container.encode(code, forKey: .code)
                
                
                
                
                try? container.encode(displayPriority, forKey: .displayPriority)
                
                
                
                
                try? container.encode(expired, forKey: .expired)
                
                
                
                
                try? container.encode(cardNumber, forKey: .cardNumber)
                
                
                
                
                try? container.encode(nickname, forKey: .nickname)
                
                
                
                
                try? container.encode(retryCount, forKey: .retryCount)
                
                
                
                
                try? container.encode(fyndVpa, forKey: .fyndVpa)
                
                
                
                
                try? container.encode(timeout, forKey: .timeout)
                
                
            }
            
        }
        
        /*
            Model: RootPaymentMode
            Used By: Payment
        */
        class RootPaymentMode: Codable {
            
            public var logoUrl: PaymentModeLogo?
            
            public var logo: String?
            
            public var list: [PaymentModeList]?
            
            public var addCardEnabled: Bool?
            
            public var displayName: String
            
            public var anonymousEnable: Bool?
            
            public var name: String
            
            public var displayPriority: Int
            
            public var aggregatorName: String?
            

            public enum CodingKeys: String, CodingKey {
                
                case logoUrl = "logo_url"
                
                case logo = "logo"
                
                case list = "list"
                
                case addCardEnabled = "add_card_enabled"
                
                case displayName = "display_name"
                
                case anonymousEnable = "anonymous_enable"
                
                case name = "name"
                
                case displayPriority = "display_priority"
                
                case aggregatorName = "aggregator_name"
                
            }

            public init(addCardEnabled: Bool? = nil, aggregatorName: String? = nil, anonymousEnable: Bool? = nil, displayName: String, displayPriority: Int, list: [PaymentModeList]? = nil, logo: String? = nil, logoUrl: PaymentModeLogo? = nil, name: String) {
                
                self.logoUrl = logoUrl
                
                self.logo = logo
                
                self.list = list
                
                self.addCardEnabled = addCardEnabled
                
                self.displayName = displayName
                
                self.anonymousEnable = anonymousEnable
                
                self.name = name
                
                self.displayPriority = displayPriority
                
                self.aggregatorName = aggregatorName
                
            }

            public func duplicate() -> RootPaymentMode {
                let dict = self.dictionary!
                let copy = RootPaymentMode(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                do {
                    logoUrl = try container.decode(PaymentModeLogo.self, forKey: .logoUrl)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    logo = try container.decode(String.self, forKey: .logo)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    list = try container.decode([PaymentModeList].self, forKey: .list)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    addCardEnabled = try container.decode(Bool.self, forKey: .addCardEnabled)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                displayName = try container.decode(String.self, forKey: .displayName)
                
                
                
                
                do {
                    anonymousEnable = try container.decode(Bool.self, forKey: .anonymousEnable)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                name = try container.decode(String.self, forKey: .name)
                
                
                
                
                displayPriority = try container.decode(Int.self, forKey: .displayPriority)
                
                
                
                
                do {
                    aggregatorName = try container.decode(String.self, forKey: .aggregatorName)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encode(logoUrl, forKey: .logoUrl)
                
                
                
                
                try? container.encode(logo, forKey: .logo)
                
                
                
                
                try? container.encodeIfPresent(list, forKey: .list)
                
                
                
                
                try? container.encode(addCardEnabled, forKey: .addCardEnabled)
                
                
                
                
                try? container.encodeIfPresent(displayName, forKey: .displayName)
                
                
                
                
                try? container.encode(anonymousEnable, forKey: .anonymousEnable)
                
                
                
                
                try? container.encodeIfPresent(name, forKey: .name)
                
                
                
                
                try? container.encodeIfPresent(displayPriority, forKey: .displayPriority)
                
                
                
                
                try? container.encode(aggregatorName, forKey: .aggregatorName)
                
                
            }
            
        }
        
        /*
            Model: AggregatorRoute
            Used By: Payment
        */
        class AggregatorRoute: Codable {
            
            public var apiLink: String?
            
            public var paymentFlowData: String?
            
            public var paymentFlow: String?
            
            public var data: [String: Any]?
            

            public enum CodingKeys: String, CodingKey {
                
                case apiLink = "api_link"
                
                case paymentFlowData = "payment_flow_data"
                
                case paymentFlow = "payment_flow"
                
                case data = "data"
                
            }

            public init(apiLink: String? = nil, data: [String: Any]? = nil, paymentFlow: String? = nil, paymentFlowData: String? = nil) {
                
                self.apiLink = apiLink
                
                self.paymentFlowData = paymentFlowData
                
                self.paymentFlow = paymentFlow
                
                self.data = data
                
            }

            public func duplicate() -> AggregatorRoute {
                let dict = self.dictionary!
                let copy = AggregatorRoute(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                do {
                    apiLink = try container.decode(String.self, forKey: .apiLink)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    paymentFlowData = try container.decode(String.self, forKey: .paymentFlowData)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    paymentFlow = try container.decode(String.self, forKey: .paymentFlow)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    data = try container.decode([String: Any].self, forKey: .data)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encode(apiLink, forKey: .apiLink)
                
                
                
                
                try? container.encode(paymentFlowData, forKey: .paymentFlowData)
                
                
                
                
                try? container.encode(paymentFlow, forKey: .paymentFlow)
                
                
                
                
                try? container.encode(data, forKey: .data)
                
                
            }
            
        }
        
        /*
            Model: PaymentFlow
            Used By: Payment
        */
        class PaymentFlow: Codable {
            
            public var juspay: AggregatorRoute?
            
            public var stripe: AggregatorRoute?
            
            public var upiRazorpay: AggregatorRoute?
            
            public var payubiz: AggregatorRoute?
            
            public var epaylater: AggregatorRoute?
            
            public var jiopay: AggregatorRoute?
            
            public var fynd: AggregatorRoute?
            
            public var mswipe: AggregatorRoute?
            
            public var ccavenue: AggregatorRoute?
            
            public var simpl: AggregatorRoute?
            
            public var rupifi: AggregatorRoute?
            
            public var bqrRazorpay: AggregatorRoute?
            
            public var razorpay: AggregatorRoute?
            

            public enum CodingKeys: String, CodingKey {
                
                case juspay = "juspay"
                
                case stripe = "stripe"
                
                case upiRazorpay = "upi_razorpay"
                
                case payubiz = "payubiz"
                
                case epaylater = "epaylater"
                
                case jiopay = "jiopay"
                
                case fynd = "fynd"
                
                case mswipe = "mswipe"
                
                case ccavenue = "ccavenue"
                
                case simpl = "simpl"
                
                case rupifi = "rupifi"
                
                case bqrRazorpay = "bqr_razorpay"
                
                case razorpay = "razorpay"
                
            }

            public init(bqrRazorpay: AggregatorRoute? = nil, ccavenue: AggregatorRoute? = nil, epaylater: AggregatorRoute? = nil, fynd: AggregatorRoute? = nil, jiopay: AggregatorRoute? = nil, juspay: AggregatorRoute? = nil, mswipe: AggregatorRoute? = nil, payubiz: AggregatorRoute? = nil, razorpay: AggregatorRoute? = nil, rupifi: AggregatorRoute? = nil, simpl: AggregatorRoute? = nil, stripe: AggregatorRoute? = nil, upiRazorpay: AggregatorRoute? = nil) {
                
                self.juspay = juspay
                
                self.stripe = stripe
                
                self.upiRazorpay = upiRazorpay
                
                self.payubiz = payubiz
                
                self.epaylater = epaylater
                
                self.jiopay = jiopay
                
                self.fynd = fynd
                
                self.mswipe = mswipe
                
                self.ccavenue = ccavenue
                
                self.simpl = simpl
                
                self.rupifi = rupifi
                
                self.bqrRazorpay = bqrRazorpay
                
                self.razorpay = razorpay
                
            }

            public func duplicate() -> PaymentFlow {
                let dict = self.dictionary!
                let copy = PaymentFlow(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                do {
                    juspay = try container.decode(AggregatorRoute.self, forKey: .juspay)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    stripe = try container.decode(AggregatorRoute.self, forKey: .stripe)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    upiRazorpay = try container.decode(AggregatorRoute.self, forKey: .upiRazorpay)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    payubiz = try container.decode(AggregatorRoute.self, forKey: .payubiz)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    epaylater = try container.decode(AggregatorRoute.self, forKey: .epaylater)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    jiopay = try container.decode(AggregatorRoute.self, forKey: .jiopay)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    fynd = try container.decode(AggregatorRoute.self, forKey: .fynd)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    mswipe = try container.decode(AggregatorRoute.self, forKey: .mswipe)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    ccavenue = try container.decode(AggregatorRoute.self, forKey: .ccavenue)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    simpl = try container.decode(AggregatorRoute.self, forKey: .simpl)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    rupifi = try container.decode(AggregatorRoute.self, forKey: .rupifi)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    bqrRazorpay = try container.decode(AggregatorRoute.self, forKey: .bqrRazorpay)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    razorpay = try container.decode(AggregatorRoute.self, forKey: .razorpay)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encode(juspay, forKey: .juspay)
                
                
                
                
                try? container.encode(stripe, forKey: .stripe)
                
                
                
                
                try? container.encode(upiRazorpay, forKey: .upiRazorpay)
                
                
                
                
                try? container.encode(payubiz, forKey: .payubiz)
                
                
                
                
                try? container.encode(epaylater, forKey: .epaylater)
                
                
                
                
                try? container.encode(jiopay, forKey: .jiopay)
                
                
                
                
                try? container.encode(fynd, forKey: .fynd)
                
                
                
                
                try? container.encode(mswipe, forKey: .mswipe)
                
                
                
                
                try? container.encode(ccavenue, forKey: .ccavenue)
                
                
                
                
                try? container.encode(simpl, forKey: .simpl)
                
                
                
                
                try? container.encode(rupifi, forKey: .rupifi)
                
                
                
                
                try? container.encode(bqrRazorpay, forKey: .bqrRazorpay)
                
                
                
                
                try? container.encode(razorpay, forKey: .razorpay)
                
                
            }
            
        }
        
        /*
            Model: PaymentOptionAndFlow
            Used By: Payment
        */
        class PaymentOptionAndFlow: Codable {
            
            public var paymentOption: [RootPaymentMode]
            
            public var paymentFlows: PaymentFlow
            

            public enum CodingKeys: String, CodingKey {
                
                case paymentOption = "payment_option"
                
                case paymentFlows = "payment_flows"
                
            }

            public init(paymentFlows: PaymentFlow, paymentOption: [RootPaymentMode]) {
                
                self.paymentOption = paymentOption
                
                self.paymentFlows = paymentFlows
                
            }

            public func duplicate() -> PaymentOptionAndFlow {
                let dict = self.dictionary!
                let copy = PaymentOptionAndFlow(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                paymentOption = try container.decode([RootPaymentMode].self, forKey: .paymentOption)
                
                
                
                
                paymentFlows = try container.decode(PaymentFlow.self, forKey: .paymentFlows)
                
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(paymentOption, forKey: .paymentOption)
                
                
                
                
                try? container.encodeIfPresent(paymentFlows, forKey: .paymentFlows)
                
                
            }
            
        }
        
        /*
            Model: PaymentModeRouteResponse
            Used By: Payment
        */
        class PaymentModeRouteResponse: Codable {
            
            public var paymentOptions: PaymentOptionAndFlow
            
            public var success: Bool
            

            public enum CodingKeys: String, CodingKey {
                
                case paymentOptions = "payment_options"
                
                case success = "success"
                
            }

            public init(paymentOptions: PaymentOptionAndFlow, success: Bool) {
                
                self.paymentOptions = paymentOptions
                
                self.success = success
                
            }

            public func duplicate() -> PaymentModeRouteResponse {
                let dict = self.dictionary!
                let copy = PaymentModeRouteResponse(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                paymentOptions = try container.decode(PaymentOptionAndFlow.self, forKey: .paymentOptions)
                
                
                
                
                success = try container.decode(Bool.self, forKey: .success)
                
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(paymentOptions, forKey: .paymentOptions)
                
                
                
                
                try? container.encodeIfPresent(success, forKey: .success)
                
                
            }
            
        }
        
        /*
            Model: RupifiBannerData
            Used By: Payment
        */
        class RupifiBannerData: Codable {
            
            public var kycUrl: String?
            
            public var status: String?
            

            public enum CodingKeys: String, CodingKey {
                
                case kycUrl = "kyc_url"
                
                case status = "status"
                
            }

            public init(kycUrl: String? = nil, status: String? = nil) {
                
                self.kycUrl = kycUrl
                
                self.status = status
                
            }

            public func duplicate() -> RupifiBannerData {
                let dict = self.dictionary!
                let copy = RupifiBannerData(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                do {
                    kycUrl = try container.decode(String.self, forKey: .kycUrl)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    status = try container.decode(String.self, forKey: .status)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(kycUrl, forKey: .kycUrl)
                
                
                
                
                try? container.encodeIfPresent(status, forKey: .status)
                
                
            }
            
        }
        
        /*
            Model: RupifiBannerResponse
            Used By: Payment
        */
        class RupifiBannerResponse: Codable {
            
            public var success: Bool
            
            public var data: RupifiBannerData
            

            public enum CodingKeys: String, CodingKey {
                
                case success = "success"
                
                case data = "data"
                
            }

            public init(data: RupifiBannerData, success: Bool) {
                
                self.success = success
                
                self.data = data
                
            }

            public func duplicate() -> RupifiBannerResponse {
                let dict = self.dictionary!
                let copy = RupifiBannerResponse(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                success = try container.decode(Bool.self, forKey: .success)
                
                
                
                
                data = try container.decode(RupifiBannerData.self, forKey: .data)
                
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(success, forKey: .success)
                
                
                
                
                try? container.encodeIfPresent(data, forKey: .data)
                
                
            }
            
        }
        
        /*
            Model: EpaylaterBannerData
            Used By: Payment
        */
        class EpaylaterBannerData: Codable {
            
            public var kycUrl: String?
            
            public var status: String?
            

            public enum CodingKeys: String, CodingKey {
                
                case kycUrl = "kyc_url"
                
                case status = "status"
                
            }

            public init(kycUrl: String? = nil, status: String? = nil) {
                
                self.kycUrl = kycUrl
                
                self.status = status
                
            }

            public func duplicate() -> EpaylaterBannerData {
                let dict = self.dictionary!
                let copy = EpaylaterBannerData(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                do {
                    kycUrl = try container.decode(String.self, forKey: .kycUrl)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    status = try container.decode(String.self, forKey: .status)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(kycUrl, forKey: .kycUrl)
                
                
                
                
                try? container.encodeIfPresent(status, forKey: .status)
                
                
            }
            
        }
        
        /*
            Model: EpaylaterBannerResponse
            Used By: Payment
        */
        class EpaylaterBannerResponse: Codable {
            
            public var success: Bool
            
            public var data: EpaylaterBannerData
            

            public enum CodingKeys: String, CodingKey {
                
                case success = "success"
                
                case data = "data"
                
            }

            public init(data: EpaylaterBannerData, success: Bool) {
                
                self.success = success
                
                self.data = data
                
            }

            public func duplicate() -> EpaylaterBannerResponse {
                let dict = self.dictionary!
                let copy = EpaylaterBannerResponse(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                success = try container.decode(Bool.self, forKey: .success)
                
                
                
                
                data = try container.decode(EpaylaterBannerData.self, forKey: .data)
                
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(success, forKey: .success)
                
                
                
                
                try? container.encodeIfPresent(data, forKey: .data)
                
                
            }
            
        }
        
        /*
            Model: ResendOrCancelPaymentRequest
            Used By: Payment
        */
        class ResendOrCancelPaymentRequest: Codable {
            
            public var orderId: String
            
            public var requestType: String
            

            public enum CodingKeys: String, CodingKey {
                
                case orderId = "order_id"
                
                case requestType = "request_type"
                
            }

            public init(orderId: String, requestType: String) {
                
                self.orderId = orderId
                
                self.requestType = requestType
                
            }

            public func duplicate() -> ResendOrCancelPaymentRequest {
                let dict = self.dictionary!
                let copy = ResendOrCancelPaymentRequest(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                orderId = try container.decode(String.self, forKey: .orderId)
                
                
                
                
                requestType = try container.decode(String.self, forKey: .requestType)
                
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(orderId, forKey: .orderId)
                
                
                
                
                try? container.encodeIfPresent(requestType, forKey: .requestType)
                
                
            }
            
        }
        
        /*
            Model: LinkStatus
            Used By: Payment
        */
        class LinkStatus: Codable {
            
            public var status: Bool
            
            public var message: String
            

            public enum CodingKeys: String, CodingKey {
                
                case status = "status"
                
                case message = "message"
                
            }

            public init(message: String, status: Bool) {
                
                self.status = status
                
                self.message = message
                
            }

            public func duplicate() -> LinkStatus {
                let dict = self.dictionary!
                let copy = LinkStatus(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                status = try container.decode(Bool.self, forKey: .status)
                
                
                
                
                message = try container.decode(String.self, forKey: .message)
                
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(status, forKey: .status)
                
                
                
                
                try? container.encodeIfPresent(message, forKey: .message)
                
                
            }
            
        }
        
        /*
            Model: ResendOrCancelPaymentResponse
            Used By: Payment
        */
        class ResendOrCancelPaymentResponse: Codable {
            
            public var success: Bool
            
            public var data: LinkStatus
            

            public enum CodingKeys: String, CodingKey {
                
                case success = "success"
                
                case data = "data"
                
            }

            public init(data: LinkStatus, success: Bool) {
                
                self.success = success
                
                self.data = data
                
            }

            public func duplicate() -> ResendOrCancelPaymentResponse {
                let dict = self.dictionary!
                let copy = ResendOrCancelPaymentResponse(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                success = try container.decode(Bool.self, forKey: .success)
                
                
                
                
                data = try container.decode(LinkStatus.self, forKey: .data)
                
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(success, forKey: .success)
                
                
                
                
                try? container.encodeIfPresent(data, forKey: .data)
                
                
            }
            
        }
        
        /*
            Model: TransferItemsDetails
            Used By: Payment
        */
        class TransferItemsDetails: Codable {
            
            public var id: Int
            
            public var displayName: String?
            
            public var logoLarge: String
            
            public var logoSmall: String
            
            public var name: String
            

            public enum CodingKeys: String, CodingKey {
                
                case id = "id"
                
                case displayName = "display_name"
                
                case logoLarge = "logo_large"
                
                case logoSmall = "logo_small"
                
                case name = "name"
                
            }

            public init(displayName: String? = nil, id: Int, logoLarge: String, logoSmall: String, name: String) {
                
                self.id = id
                
                self.displayName = displayName
                
                self.logoLarge = logoLarge
                
                self.logoSmall = logoSmall
                
                self.name = name
                
            }

            public func duplicate() -> TransferItemsDetails {
                let dict = self.dictionary!
                let copy = TransferItemsDetails(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                id = try container.decode(Int.self, forKey: .id)
                
                
                
                
                do {
                    displayName = try container.decode(String.self, forKey: .displayName)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                logoLarge = try container.decode(String.self, forKey: .logoLarge)
                
                
                
                
                logoSmall = try container.decode(String.self, forKey: .logoSmall)
                
                
                
                
                name = try container.decode(String.self, forKey: .name)
                
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(id, forKey: .id)
                
                
                
                
                try? container.encodeIfPresent(displayName, forKey: .displayName)
                
                
                
                
                try? container.encodeIfPresent(logoLarge, forKey: .logoLarge)
                
                
                
                
                try? container.encodeIfPresent(logoSmall, forKey: .logoSmall)
                
                
                
                
                try? container.encodeIfPresent(name, forKey: .name)
                
                
            }
            
        }
        
        /*
            Model: TransferModeDetails
            Used By: Payment
        */
        class TransferModeDetails: Codable {
            
            public var items: [TransferItemsDetails]?
            
            public var displayName: String
            

            public enum CodingKeys: String, CodingKey {
                
                case items = "items"
                
                case displayName = "display_name"
                
            }

            public init(displayName: String, items: [TransferItemsDetails]? = nil) {
                
                self.items = items
                
                self.displayName = displayName
                
            }

            public func duplicate() -> TransferModeDetails {
                let dict = self.dictionary!
                let copy = TransferModeDetails(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                do {
                    items = try container.decode([TransferItemsDetails].self, forKey: .items)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                displayName = try container.decode(String.self, forKey: .displayName)
                
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(items, forKey: .items)
                
                
                
                
                try? container.encodeIfPresent(displayName, forKey: .displayName)
                
                
            }
            
        }
        
        /*
            Model: TransferModeResponse
            Used By: Payment
        */
        class TransferModeResponse: Codable {
            
            public var data: [TransferModeDetails]
            

            public enum CodingKeys: String, CodingKey {
                
                case data = "data"
                
            }

            public init(data: [TransferModeDetails]) {
                
                self.data = data
                
            }

            public func duplicate() -> TransferModeResponse {
                let dict = self.dictionary!
                let copy = TransferModeResponse(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                data = try container.decode([TransferModeDetails].self, forKey: .data)
                
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(data, forKey: .data)
                
                
            }
            
        }
        
        /*
            Model: UpdateRefundTransferModeRequest
            Used By: Payment
        */
        class UpdateRefundTransferModeRequest: Codable {
            
            public var transferMode: String
            
            public var enable: Bool
            

            public enum CodingKeys: String, CodingKey {
                
                case transferMode = "transfer_mode"
                
                case enable = "enable"
                
            }

            public init(enable: Bool, transferMode: String) {
                
                self.transferMode = transferMode
                
                self.enable = enable
                
            }

            public func duplicate() -> UpdateRefundTransferModeRequest {
                let dict = self.dictionary!
                let copy = UpdateRefundTransferModeRequest(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                transferMode = try container.decode(String.self, forKey: .transferMode)
                
                
                
                
                enable = try container.decode(Bool.self, forKey: .enable)
                
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(transferMode, forKey: .transferMode)
                
                
                
                
                try? container.encodeIfPresent(enable, forKey: .enable)
                
                
            }
            
        }
        
        /*
            Model: UpdateRefundTransferModeResponse
            Used By: Payment
        */
        class UpdateRefundTransferModeResponse: Codable {
            
            public var success: Bool?
            

            public enum CodingKeys: String, CodingKey {
                
                case success = "success"
                
            }

            public init(success: Bool? = nil) {
                
                self.success = success
                
            }

            public func duplicate() -> UpdateRefundTransferModeResponse {
                let dict = self.dictionary!
                let copy = UpdateRefundTransferModeResponse(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                do {
                    success = try container.decode(Bool.self, forKey: .success)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(success, forKey: .success)
                
                
            }
            
        }
        
        /*
            Model: OrderBeneficiaryDetails
            Used By: Payment
        */
        class OrderBeneficiaryDetails: Codable {
            
            public var email: String
            
            public var subtitle: String
            
            public var ifscCode: String
            
            public var transferMode: String
            
            public var branchName: Bool?
            
            public var mobile: Bool?
            
            public var beneficiaryId: String
            
            public var createdOn: String
            
            public var displayName: String
            
            public var modifiedOn: String
            
            public var address: String
            
            public var accountHolder: String
            
            public var id: Int
            
            public var bankName: String
            
            public var title: String
            
            public var delightsUserName: String?
            
            public var comment: Bool?
            
            public var isActive: Bool
            
            public var accountNo: String
            

            public enum CodingKeys: String, CodingKey {
                
                case email = "email"
                
                case subtitle = "subtitle"
                
                case ifscCode = "ifsc_code"
                
                case transferMode = "transfer_mode"
                
                case branchName = "branch_name"
                
                case mobile = "mobile"
                
                case beneficiaryId = "beneficiary_id"
                
                case createdOn = "created_on"
                
                case displayName = "display_name"
                
                case modifiedOn = "modified_on"
                
                case address = "address"
                
                case accountHolder = "account_holder"
                
                case id = "id"
                
                case bankName = "bank_name"
                
                case title = "title"
                
                case delightsUserName = "delights_user_name"
                
                case comment = "comment"
                
                case isActive = "is_active"
                
                case accountNo = "account_no"
                
            }

            public init(accountHolder: String, accountNo: String, address: String, bankName: String, beneficiaryId: String, branchName: Bool? = nil, comment: Bool? = nil, createdOn: String, delightsUserName: String? = nil, displayName: String, email: String, id: Int, ifscCode: String, isActive: Bool, mobile: Bool? = nil, modifiedOn: String, subtitle: String, title: String, transferMode: String) {
                
                self.email = email
                
                self.subtitle = subtitle
                
                self.ifscCode = ifscCode
                
                self.transferMode = transferMode
                
                self.branchName = branchName
                
                self.mobile = mobile
                
                self.beneficiaryId = beneficiaryId
                
                self.createdOn = createdOn
                
                self.displayName = displayName
                
                self.modifiedOn = modifiedOn
                
                self.address = address
                
                self.accountHolder = accountHolder
                
                self.id = id
                
                self.bankName = bankName
                
                self.title = title
                
                self.delightsUserName = delightsUserName
                
                self.comment = comment
                
                self.isActive = isActive
                
                self.accountNo = accountNo
                
            }

            public func duplicate() -> OrderBeneficiaryDetails {
                let dict = self.dictionary!
                let copy = OrderBeneficiaryDetails(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                email = try container.decode(String.self, forKey: .email)
                
                
                
                
                subtitle = try container.decode(String.self, forKey: .subtitle)
                
                
                
                
                ifscCode = try container.decode(String.self, forKey: .ifscCode)
                
                
                
                
                transferMode = try container.decode(String.self, forKey: .transferMode)
                
                
                
                
                do {
                    branchName = try container.decode(Bool.self, forKey: .branchName)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    mobile = try container.decode(Bool.self, forKey: .mobile)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                beneficiaryId = try container.decode(String.self, forKey: .beneficiaryId)
                
                
                
                
                createdOn = try container.decode(String.self, forKey: .createdOn)
                
                
                
                
                displayName = try container.decode(String.self, forKey: .displayName)
                
                
                
                
                modifiedOn = try container.decode(String.self, forKey: .modifiedOn)
                
                
                
                
                address = try container.decode(String.self, forKey: .address)
                
                
                
                
                accountHolder = try container.decode(String.self, forKey: .accountHolder)
                
                
                
                
                id = try container.decode(Int.self, forKey: .id)
                
                
                
                
                bankName = try container.decode(String.self, forKey: .bankName)
                
                
                
                
                title = try container.decode(String.self, forKey: .title)
                
                
                
                
                do {
                    delightsUserName = try container.decode(String.self, forKey: .delightsUserName)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    comment = try container.decode(Bool.self, forKey: .comment)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                isActive = try container.decode(Bool.self, forKey: .isActive)
                
                
                
                
                accountNo = try container.decode(String.self, forKey: .accountNo)
                
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(email, forKey: .email)
                
                
                
                
                try? container.encodeIfPresent(subtitle, forKey: .subtitle)
                
                
                
                
                try? container.encodeIfPresent(ifscCode, forKey: .ifscCode)
                
                
                
                
                try? container.encodeIfPresent(transferMode, forKey: .transferMode)
                
                
                
                
                try? container.encodeIfPresent(branchName, forKey: .branchName)
                
                
                
                
                try? container.encodeIfPresent(mobile, forKey: .mobile)
                
                
                
                
                try? container.encodeIfPresent(beneficiaryId, forKey: .beneficiaryId)
                
                
                
                
                try? container.encodeIfPresent(createdOn, forKey: .createdOn)
                
                
                
                
                try? container.encodeIfPresent(displayName, forKey: .displayName)
                
                
                
                
                try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)
                
                
                
                
                try? container.encodeIfPresent(address, forKey: .address)
                
                
                
                
                try? container.encodeIfPresent(accountHolder, forKey: .accountHolder)
                
                
                
                
                try? container.encodeIfPresent(id, forKey: .id)
                
                
                
                
                try? container.encodeIfPresent(bankName, forKey: .bankName)
                
                
                
                
                try? container.encodeIfPresent(title, forKey: .title)
                
                
                
                
                try? container.encode(delightsUserName, forKey: .delightsUserName)
                
                
                
                
                try? container.encodeIfPresent(comment, forKey: .comment)
                
                
                
                
                try? container.encodeIfPresent(isActive, forKey: .isActive)
                
                
                
                
                try? container.encodeIfPresent(accountNo, forKey: .accountNo)
                
                
            }
            
        }
        
        /*
            Model: OrderBeneficiaryResponse
            Used By: Payment
        */
        class OrderBeneficiaryResponse: Codable {
            
            public var showBeneficiaryDetails: Bool?
            
            public var beneficiaries: [OrderBeneficiaryDetails]?
            

            public enum CodingKeys: String, CodingKey {
                
                case showBeneficiaryDetails = "show_beneficiary_details"
                
                case beneficiaries = "beneficiaries"
                
            }

            public init(beneficiaries: [OrderBeneficiaryDetails]? = nil, showBeneficiaryDetails: Bool? = nil) {
                
                self.showBeneficiaryDetails = showBeneficiaryDetails
                
                self.beneficiaries = beneficiaries
                
            }

            public func duplicate() -> OrderBeneficiaryResponse {
                let dict = self.dictionary!
                let copy = OrderBeneficiaryResponse(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                do {
                    showBeneficiaryDetails = try container.decode(Bool.self, forKey: .showBeneficiaryDetails)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    beneficiaries = try container.decode([OrderBeneficiaryDetails].self, forKey: .beneficiaries)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(showBeneficiaryDetails, forKey: .showBeneficiaryDetails)
                
                
                
                
                try? container.encode(beneficiaries, forKey: .beneficiaries)
                
                
            }
            
        }
        
        /*
            Model: NotFoundResourceError
            Used By: Payment
        */
        class NotFoundResourceError: Codable {
            
            public var success: Bool
            
            public var code: String
            
            public var description: String
            

            public enum CodingKeys: String, CodingKey {
                
                case success = "success"
                
                case code = "code"
                
                case description = "description"
                
            }

            public init(code: String, description: String, success: Bool) {
                
                self.success = success
                
                self.code = code
                
                self.description = description
                
            }

            public func duplicate() -> NotFoundResourceError {
                let dict = self.dictionary!
                let copy = NotFoundResourceError(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                success = try container.decode(Bool.self, forKey: .success)
                
                
                
                
                code = try container.decode(String.self, forKey: .code)
                
                
                
                
                description = try container.decode(String.self, forKey: .description)
                
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(success, forKey: .success)
                
                
                
                
                try? container.encodeIfPresent(code, forKey: .code)
                
                
                
                
                try? container.encodeIfPresent(description, forKey: .description)
                
                
            }
            
        }
        
        /*
            Model: IfscCodeResponse
            Used By: Payment
        */
        class IfscCodeResponse: Codable {
            
            public var bankName: String
            
            public var branchName: String
            
            public var success: Bool?
            

            public enum CodingKeys: String, CodingKey {
                
                case bankName = "bank_name"
                
                case branchName = "branch_name"
                
                case success = "success"
                
            }

            public init(bankName: String, branchName: String, success: Bool? = nil) {
                
                self.bankName = bankName
                
                self.branchName = branchName
                
                self.success = success
                
            }

            public func duplicate() -> IfscCodeResponse {
                let dict = self.dictionary!
                let copy = IfscCodeResponse(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                bankName = try container.decode(String.self, forKey: .bankName)
                
                
                
                
                branchName = try container.decode(String.self, forKey: .branchName)
                
                
                
                
                do {
                    success = try container.decode(Bool.self, forKey: .success)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(bankName, forKey: .bankName)
                
                
                
                
                try? container.encodeIfPresent(branchName, forKey: .branchName)
                
                
                
                
                try? container.encodeIfPresent(success, forKey: .success)
                
                
            }
            
        }
        
        /*
            Model: ErrorCodeDescription
            Used By: Payment
        */
        class ErrorCodeDescription: Codable {
            
            public var success: Bool
            
            public var code: String
            
            public var description: String
            

            public enum CodingKeys: String, CodingKey {
                
                case success = "success"
                
                case code = "code"
                
                case description = "description"
                
            }

            public init(code: String, description: String, success: Bool) {
                
                self.success = success
                
                self.code = code
                
                self.description = description
                
            }

            public func duplicate() -> ErrorCodeDescription {
                let dict = self.dictionary!
                let copy = ErrorCodeDescription(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                success = try container.decode(Bool.self, forKey: .success)
                
                
                
                
                code = try container.decode(String.self, forKey: .code)
                
                
                
                
                description = try container.decode(String.self, forKey: .description)
                
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(success, forKey: .success)
                
                
                
                
                try? container.encodeIfPresent(code, forKey: .code)
                
                
                
                
                try? container.encodeIfPresent(description, forKey: .description)
                
                
            }
            
        }
        
        /*
            Model: AddBeneficiaryViaOtpVerificationRequest
            Used By: Payment
        */
        class AddBeneficiaryViaOtpVerificationRequest: Codable {
            
            public var hashKey: String
            
            public var requestId: String
            
            public var otp: String
            

            public enum CodingKeys: String, CodingKey {
                
                case hashKey = "hash_key"
                
                case requestId = "request_id"
                
                case otp = "otp"
                
            }

            public init(hashKey: String, otp: String, requestId: String) {
                
                self.hashKey = hashKey
                
                self.requestId = requestId
                
                self.otp = otp
                
            }

            public func duplicate() -> AddBeneficiaryViaOtpVerificationRequest {
                let dict = self.dictionary!
                let copy = AddBeneficiaryViaOtpVerificationRequest(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                hashKey = try container.decode(String.self, forKey: .hashKey)
                
                
                
                
                requestId = try container.decode(String.self, forKey: .requestId)
                
                
                
                
                otp = try container.decode(String.self, forKey: .otp)
                
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(hashKey, forKey: .hashKey)
                
                
                
                
                try? container.encodeIfPresent(requestId, forKey: .requestId)
                
                
                
                
                try? container.encodeIfPresent(otp, forKey: .otp)
                
                
            }
            
        }
        
        /*
            Model: AddBeneficiaryViaOtpVerificationResponse
            Used By: Payment
        */
        class AddBeneficiaryViaOtpVerificationResponse: Codable {
            
            public var success: Bool?
            
            public var message: String
            

            public enum CodingKeys: String, CodingKey {
                
                case success = "success"
                
                case message = "message"
                
            }

            public init(message: String, success: Bool? = nil) {
                
                self.success = success
                
                self.message = message
                
            }

            public func duplicate() -> AddBeneficiaryViaOtpVerificationResponse {
                let dict = self.dictionary!
                let copy = AddBeneficiaryViaOtpVerificationResponse(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                do {
                    success = try container.decode(Bool.self, forKey: .success)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                message = try container.decode(String.self, forKey: .message)
                
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(success, forKey: .success)
                
                
                
                
                try? container.encodeIfPresent(message, forKey: .message)
                
                
            }
            
        }
        
        /*
            Model: WrongOtpError
            Used By: Payment
        */
        class WrongOtpError: Codable {
            
            public var success: String
            
            public var isVerifiedFlag: Bool
            
            public var description: String
            

            public enum CodingKeys: String, CodingKey {
                
                case success = "success"
                
                case isVerifiedFlag = "is_verified_flag"
                
                case description = "description"
                
            }

            public init(description: String, isVerifiedFlag: Bool, success: String) {
                
                self.success = success
                
                self.isVerifiedFlag = isVerifiedFlag
                
                self.description = description
                
            }

            public func duplicate() -> WrongOtpError {
                let dict = self.dictionary!
                let copy = WrongOtpError(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                success = try container.decode(String.self, forKey: .success)
                
                
                
                
                isVerifiedFlag = try container.decode(Bool.self, forKey: .isVerifiedFlag)
                
                
                
                
                description = try container.decode(String.self, forKey: .description)
                
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(success, forKey: .success)
                
                
                
                
                try? container.encodeIfPresent(isVerifiedFlag, forKey: .isVerifiedFlag)
                
                
                
                
                try? container.encodeIfPresent(description, forKey: .description)
                
                
            }
            
        }
        
        /*
            Model: BeneficiaryModeDetails
            Used By: Payment
        */
        class BeneficiaryModeDetails: Codable {
            
            public var bankName: String
            
            public var branchName: String
            
            public var vpa: String?
            
            public var email: String
            
            public var wallet: String?
            
            public var ifscCode: String
            
            public var mobile: String
            
            public var comment: String?
            
            public var address: String?
            
            public var accountHolder: String
            
            public var accountNo: String
            

            public enum CodingKeys: String, CodingKey {
                
                case bankName = "bank_name"
                
                case branchName = "branch_name"
                
                case vpa = "vpa"
                
                case email = "email"
                
                case wallet = "wallet"
                
                case ifscCode = "ifsc_code"
                
                case mobile = "mobile"
                
                case comment = "comment"
                
                case address = "address"
                
                case accountHolder = "account_holder"
                
                case accountNo = "account_no"
                
            }

            public init(accountHolder: String, accountNo: String, address: String? = nil, bankName: String, branchName: String, comment: String? = nil, email: String, ifscCode: String, mobile: String, vpa: String? = nil, wallet: String? = nil) {
                
                self.bankName = bankName
                
                self.branchName = branchName
                
                self.vpa = vpa
                
                self.email = email
                
                self.wallet = wallet
                
                self.ifscCode = ifscCode
                
                self.mobile = mobile
                
                self.comment = comment
                
                self.address = address
                
                self.accountHolder = accountHolder
                
                self.accountNo = accountNo
                
            }

            public func duplicate() -> BeneficiaryModeDetails {
                let dict = self.dictionary!
                let copy = BeneficiaryModeDetails(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                bankName = try container.decode(String.self, forKey: .bankName)
                
                
                
                
                branchName = try container.decode(String.self, forKey: .branchName)
                
                
                
                
                do {
                    vpa = try container.decode(String.self, forKey: .vpa)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                email = try container.decode(String.self, forKey: .email)
                
                
                
                
                do {
                    wallet = try container.decode(String.self, forKey: .wallet)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                ifscCode = try container.decode(String.self, forKey: .ifscCode)
                
                
                
                
                mobile = try container.decode(String.self, forKey: .mobile)
                
                
                
                
                do {
                    comment = try container.decode(String.self, forKey: .comment)
                
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
                
                
                
                accountHolder = try container.decode(String.self, forKey: .accountHolder)
                
                
                
                
                accountNo = try container.decode(String.self, forKey: .accountNo)
                
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(bankName, forKey: .bankName)
                
                
                
                
                try? container.encodeIfPresent(branchName, forKey: .branchName)
                
                
                
                
                try? container.encode(vpa, forKey: .vpa)
                
                
                
                
                try? container.encodeIfPresent(email, forKey: .email)
                
                
                
                
                try? container.encode(wallet, forKey: .wallet)
                
                
                
                
                try? container.encodeIfPresent(ifscCode, forKey: .ifscCode)
                
                
                
                
                try? container.encodeIfPresent(mobile, forKey: .mobile)
                
                
                
                
                try? container.encodeIfPresent(comment, forKey: .comment)
                
                
                
                
                try? container.encodeIfPresent(address, forKey: .address)
                
                
                
                
                try? container.encodeIfPresent(accountHolder, forKey: .accountHolder)
                
                
                
                
                try? container.encodeIfPresent(accountNo, forKey: .accountNo)
                
                
            }
            
        }
        
        /*
            Model: AddBeneficiaryDetailsRequest
            Used By: Payment
        */
        class AddBeneficiaryDetailsRequest: Codable {
            
            public var requestId: String?
            
            public var otp: String?
            
            public var delights: Bool
            
            public var shipmentId: String
            
            public var orderId: String
            
            public var details: BeneficiaryModeDetails
            
            public var transferMode: String
            

            public enum CodingKeys: String, CodingKey {
                
                case requestId = "request_id"
                
                case otp = "otp"
                
                case delights = "delights"
                
                case shipmentId = "shipment_id"
                
                case orderId = "order_id"
                
                case details = "details"
                
                case transferMode = "transfer_mode"
                
            }

            public init(delights: Bool, details: BeneficiaryModeDetails, orderId: String, otp: String? = nil, requestId: String? = nil, shipmentId: String, transferMode: String) {
                
                self.requestId = requestId
                
                self.otp = otp
                
                self.delights = delights
                
                self.shipmentId = shipmentId
                
                self.orderId = orderId
                
                self.details = details
                
                self.transferMode = transferMode
                
            }

            public func duplicate() -> AddBeneficiaryDetailsRequest {
                let dict = self.dictionary!
                let copy = AddBeneficiaryDetailsRequest(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                do {
                    requestId = try container.decode(String.self, forKey: .requestId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    otp = try container.decode(String.self, forKey: .otp)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                delights = try container.decode(Bool.self, forKey: .delights)
                
                
                
                
                shipmentId = try container.decode(String.self, forKey: .shipmentId)
                
                
                
                
                orderId = try container.decode(String.self, forKey: .orderId)
                
                
                
                
                details = try container.decode(BeneficiaryModeDetails.self, forKey: .details)
                
                
                
                
                transferMode = try container.decode(String.self, forKey: .transferMode)
                
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(requestId, forKey: .requestId)
                
                
                
                
                try? container.encodeIfPresent(otp, forKey: .otp)
                
                
                
                
                try? container.encodeIfPresent(delights, forKey: .delights)
                
                
                
                
                try? container.encodeIfPresent(shipmentId, forKey: .shipmentId)
                
                
                
                
                try? container.encodeIfPresent(orderId, forKey: .orderId)
                
                
                
                
                try? container.encodeIfPresent(details, forKey: .details)
                
                
                
                
                try? container.encodeIfPresent(transferMode, forKey: .transferMode)
                
                
            }
            
        }
        
        /*
            Model: RefundAccountResponse
            Used By: Payment
        */
        class RefundAccountResponse: Codable {
            
            public var success: Bool
            
            public var isVerifiedFlag: Bool?
            
            public var message: String
            
            public var data: [String: Any]?
            

            public enum CodingKeys: String, CodingKey {
                
                case success = "success"
                
                case isVerifiedFlag = "is_verified_flag"
                
                case message = "message"
                
                case data = "data"
                
            }

            public init(data: [String: Any]? = nil, isVerifiedFlag: Bool? = nil, message: String, success: Bool) {
                
                self.success = success
                
                self.isVerifiedFlag = isVerifiedFlag
                
                self.message = message
                
                self.data = data
                
            }

            public func duplicate() -> RefundAccountResponse {
                let dict = self.dictionary!
                let copy = RefundAccountResponse(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                success = try container.decode(Bool.self, forKey: .success)
                
                
                
                
                do {
                    isVerifiedFlag = try container.decode(Bool.self, forKey: .isVerifiedFlag)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                message = try container.decode(String.self, forKey: .message)
                
                
                
                
                do {
                    data = try container.decode([String: Any].self, forKey: .data)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(success, forKey: .success)
                
                
                
                
                try? container.encodeIfPresent(isVerifiedFlag, forKey: .isVerifiedFlag)
                
                
                
                
                try? container.encodeIfPresent(message, forKey: .message)
                
                
                
                
                try? container.encodeIfPresent(data, forKey: .data)
                
                
            }
            
        }
        
        /*
            Model: BankDetailsForOTP
            Used By: Payment
        */
        class BankDetailsForOTP: Codable {
            
            public var bankName: String
            
            public var branchName: String
            
            public var ifscCode: String
            
            public var accountHolder: String
            
            public var accountNo: String
            

            public enum CodingKeys: String, CodingKey {
                
                case bankName = "bank_name"
                
                case branchName = "branch_name"
                
                case ifscCode = "ifsc_code"
                
                case accountHolder = "account_holder"
                
                case accountNo = "account_no"
                
            }

            public init(accountHolder: String, accountNo: String, bankName: String, branchName: String, ifscCode: String) {
                
                self.bankName = bankName
                
                self.branchName = branchName
                
                self.ifscCode = ifscCode
                
                self.accountHolder = accountHolder
                
                self.accountNo = accountNo
                
            }

            public func duplicate() -> BankDetailsForOTP {
                let dict = self.dictionary!
                let copy = BankDetailsForOTP(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                bankName = try container.decode(String.self, forKey: .bankName)
                
                
                
                
                branchName = try container.decode(String.self, forKey: .branchName)
                
                
                
                
                ifscCode = try container.decode(String.self, forKey: .ifscCode)
                
                
                
                
                accountHolder = try container.decode(String.self, forKey: .accountHolder)
                
                
                
                
                accountNo = try container.decode(String.self, forKey: .accountNo)
                
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(bankName, forKey: .bankName)
                
                
                
                
                try? container.encodeIfPresent(branchName, forKey: .branchName)
                
                
                
                
                try? container.encodeIfPresent(ifscCode, forKey: .ifscCode)
                
                
                
                
                try? container.encodeIfPresent(accountHolder, forKey: .accountHolder)
                
                
                
                
                try? container.encodeIfPresent(accountNo, forKey: .accountNo)
                
                
            }
            
        }
        
        /*
            Model: AddBeneficiaryDetailsOTPRequest
            Used By: Payment
        */
        class AddBeneficiaryDetailsOTPRequest: Codable {
            
            public var orderId: String
            
            public var details: BankDetailsForOTP
            

            public enum CodingKeys: String, CodingKey {
                
                case orderId = "order_id"
                
                case details = "details"
                
            }

            public init(details: BankDetailsForOTP, orderId: String) {
                
                self.orderId = orderId
                
                self.details = details
                
            }

            public func duplicate() -> AddBeneficiaryDetailsOTPRequest {
                let dict = self.dictionary!
                let copy = AddBeneficiaryDetailsOTPRequest(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                orderId = try container.decode(String.self, forKey: .orderId)
                
                
                
                
                details = try container.decode(BankDetailsForOTP.self, forKey: .details)
                
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(orderId, forKey: .orderId)
                
                
                
                
                try? container.encodeIfPresent(details, forKey: .details)
                
                
            }
            
        }
        
        /*
            Model: WalletOtpRequest
            Used By: Payment
        */
        class WalletOtpRequest: Codable {
            
            public var countryCode: String
            
            public var mobile: String
            

            public enum CodingKeys: String, CodingKey {
                
                case countryCode = "country_code"
                
                case mobile = "mobile"
                
            }

            public init(countryCode: String, mobile: String) {
                
                self.countryCode = countryCode
                
                self.mobile = mobile
                
            }

            public func duplicate() -> WalletOtpRequest {
                let dict = self.dictionary!
                let copy = WalletOtpRequest(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                countryCode = try container.decode(String.self, forKey: .countryCode)
                
                
                
                
                mobile = try container.decode(String.self, forKey: .mobile)
                
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(countryCode, forKey: .countryCode)
                
                
                
                
                try? container.encodeIfPresent(mobile, forKey: .mobile)
                
                
            }
            
        }
        
        /*
            Model: WalletOtpResponse
            Used By: Payment
        */
        class WalletOtpResponse: Codable {
            
            public var requestId: String
            
            public var success: Bool?
            
            public var isVerifiedFlag: String
            

            public enum CodingKeys: String, CodingKey {
                
                case requestId = "request_id"
                
                case success = "success"
                
                case isVerifiedFlag = "is_verified_flag"
                
            }

            public init(isVerifiedFlag: String, requestId: String, success: Bool? = nil) {
                
                self.requestId = requestId
                
                self.success = success
                
                self.isVerifiedFlag = isVerifiedFlag
                
            }

            public func duplicate() -> WalletOtpResponse {
                let dict = self.dictionary!
                let copy = WalletOtpResponse(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                requestId = try container.decode(String.self, forKey: .requestId)
                
                
                
                
                do {
                    success = try container.decode(Bool.self, forKey: .success)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                isVerifiedFlag = try container.decode(String.self, forKey: .isVerifiedFlag)
                
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(requestId, forKey: .requestId)
                
                
                
                
                try? container.encodeIfPresent(success, forKey: .success)
                
                
                
                
                try? container.encodeIfPresent(isVerifiedFlag, forKey: .isVerifiedFlag)
                
                
            }
            
        }
        
        /*
            Model: SetDefaultBeneficiaryRequest
            Used By: Payment
        */
        class SetDefaultBeneficiaryRequest: Codable {
            
            public var orderId: String
            
            public var beneficiaryId: String
            

            public enum CodingKeys: String, CodingKey {
                
                case orderId = "order_id"
                
                case beneficiaryId = "beneficiary_id"
                
            }

            public init(beneficiaryId: String, orderId: String) {
                
                self.orderId = orderId
                
                self.beneficiaryId = beneficiaryId
                
            }

            public func duplicate() -> SetDefaultBeneficiaryRequest {
                let dict = self.dictionary!
                let copy = SetDefaultBeneficiaryRequest(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                orderId = try container.decode(String.self, forKey: .orderId)
                
                
                
                
                beneficiaryId = try container.decode(String.self, forKey: .beneficiaryId)
                
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(orderId, forKey: .orderId)
                
                
                
                
                try? container.encodeIfPresent(beneficiaryId, forKey: .beneficiaryId)
                
                
            }
            
        }
        
        /*
            Model: SetDefaultBeneficiaryResponse
            Used By: Payment
        */
        class SetDefaultBeneficiaryResponse: Codable {
            
            public var success: Bool?
            
            public var isBeneficiarySet: Bool
            

            public enum CodingKeys: String, CodingKey {
                
                case success = "success"
                
                case isBeneficiarySet = "is_beneficiary_set"
                
            }

            public init(isBeneficiarySet: Bool, success: Bool? = nil) {
                
                self.success = success
                
                self.isBeneficiarySet = isBeneficiarySet
                
            }

            public func duplicate() -> SetDefaultBeneficiaryResponse {
                let dict = self.dictionary!
                let copy = SetDefaultBeneficiaryResponse(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                do {
                    success = try container.decode(Bool.self, forKey: .success)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                isBeneficiarySet = try container.decode(Bool.self, forKey: .isBeneficiarySet)
                
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(success, forKey: .success)
                
                
                
                
                try? container.encodeIfPresent(isBeneficiarySet, forKey: .isBeneficiarySet)
                
                
            }
            
        }
        
        /*
            Model: BalanceDetails
            Used By: Payment
        */
        class BalanceDetails: Codable {
            
            public var formattedValue: String
            
            public var currency: String
            
            public var value: Double
            

            public enum CodingKeys: String, CodingKey {
                
                case formattedValue = "formatted_value"
                
                case currency = "currency"
                
                case value = "value"
                
            }

            public init(currency: String, formattedValue: String, value: Double) {
                
                self.formattedValue = formattedValue
                
                self.currency = currency
                
                self.value = value
                
            }

            public func duplicate() -> BalanceDetails {
                let dict = self.dictionary!
                let copy = BalanceDetails(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                formattedValue = try container.decode(String.self, forKey: .formattedValue)
                
                
                
                
                currency = try container.decode(String.self, forKey: .currency)
                
                
                
                
                value = try container.decode(Double.self, forKey: .value)
                
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(formattedValue, forKey: .formattedValue)
                
                
                
                
                try? container.encodeIfPresent(currency, forKey: .currency)
                
                
                
                
                try? container.encodeIfPresent(value, forKey: .value)
                
                
            }
            
        }
        
        /*
            Model: CreditSummary
            Used By: Payment
        */
        class CreditSummary: Codable {
            
            public var merchantCustomerRefId: String
            
            public var statusMessage: String
            
            public var status: String
            
            public var balance: BalanceDetails?
            

            public enum CodingKeys: String, CodingKey {
                
                case merchantCustomerRefId = "merchant_customer_ref_id"
                
                case statusMessage = "status_message"
                
                case status = "status"
                
                case balance = "balance"
                
            }

            public init(balance: BalanceDetails? = nil, merchantCustomerRefId: String, status: String, statusMessage: String) {
                
                self.merchantCustomerRefId = merchantCustomerRefId
                
                self.statusMessage = statusMessage
                
                self.status = status
                
                self.balance = balance
                
            }

            public func duplicate() -> CreditSummary {
                let dict = self.dictionary!
                let copy = CreditSummary(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                merchantCustomerRefId = try container.decode(String.self, forKey: .merchantCustomerRefId)
                
                
                
                
                statusMessage = try container.decode(String.self, forKey: .statusMessage)
                
                
                
                
                status = try container.decode(String.self, forKey: .status)
                
                
                
                
                do {
                    balance = try container.decode(BalanceDetails.self, forKey: .balance)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(merchantCustomerRefId, forKey: .merchantCustomerRefId)
                
                
                
                
                try? container.encodeIfPresent(statusMessage, forKey: .statusMessage)
                
                
                
                
                try? container.encodeIfPresent(status, forKey: .status)
                
                
                
                
                try? container.encodeIfPresent(balance, forKey: .balance)
                
                
            }
            
        }
        
        /*
            Model: CustomerCreditSummaryResponse
            Used By: Payment
        */
        class CustomerCreditSummaryResponse: Codable {
            
            public var success: Bool
            
            public var data: CreditSummary?
            

            public enum CodingKeys: String, CodingKey {
                
                case success = "success"
                
                case data = "data"
                
            }

            public init(data: CreditSummary? = nil, success: Bool) {
                
                self.success = success
                
                self.data = data
                
            }

            public func duplicate() -> CustomerCreditSummaryResponse {
                let dict = self.dictionary!
                let copy = CustomerCreditSummaryResponse(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                success = try container.decode(Bool.self, forKey: .success)
                
                
                
                
                do {
                    data = try container.decode(CreditSummary.self, forKey: .data)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(success, forKey: .success)
                
                
                
                
                try? container.encodeIfPresent(data, forKey: .data)
                
                
            }
            
        }
        
        /*
            Model: RedirectURL
            Used By: Payment
        */
        class RedirectURL: Codable {
            
            public var status: Bool
            
            public var signupUrl: String
            

            public enum CodingKeys: String, CodingKey {
                
                case status = "status"
                
                case signupUrl = "signup_url"
                
            }

            public init(signupUrl: String, status: Bool) {
                
                self.status = status
                
                self.signupUrl = signupUrl
                
            }

            public func duplicate() -> RedirectURL {
                let dict = self.dictionary!
                let copy = RedirectURL(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                status = try container.decode(Bool.self, forKey: .status)
                
                
                
                
                signupUrl = try container.decode(String.self, forKey: .signupUrl)
                
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(status, forKey: .status)
                
                
                
                
                try? container.encodeIfPresent(signupUrl, forKey: .signupUrl)
                
                
            }
            
        }
        
        /*
            Model: RedirectToAggregatorResponse
            Used By: Payment
        */
        class RedirectToAggregatorResponse: Codable {
            
            public var success: Bool
            
            public var data: RedirectURL
            

            public enum CodingKeys: String, CodingKey {
                
                case success = "success"
                
                case data = "data"
                
            }

            public init(data: RedirectURL, success: Bool) {
                
                self.success = success
                
                self.data = data
                
            }

            public func duplicate() -> RedirectToAggregatorResponse {
                let dict = self.dictionary!
                let copy = RedirectToAggregatorResponse(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                success = try container.decode(Bool.self, forKey: .success)
                
                
                
                
                data = try container.decode(RedirectURL.self, forKey: .data)
                
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(success, forKey: .success)
                
                
                
                
                try? container.encodeIfPresent(data, forKey: .data)
                
                
            }
            
        }
        
        /*
            Model: CreditDetail
            Used By: Payment
        */
        class CreditDetail: Codable {
            
            public var isRegistered: Bool
            
            public var status: Bool
            
            public var signupUrl: String
            

            public enum CodingKeys: String, CodingKey {
                
                case isRegistered = "is_registered"
                
                case status = "status"
                
                case signupUrl = "signup_url"
                
            }

            public init(isRegistered: Bool, signupUrl: String, status: Bool) {
                
                self.isRegistered = isRegistered
                
                self.status = status
                
                self.signupUrl = signupUrl
                
            }

            public func duplicate() -> CreditDetail {
                let dict = self.dictionary!
                let copy = CreditDetail(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                isRegistered = try container.decode(Bool.self, forKey: .isRegistered)
                
                
                
                
                status = try container.decode(Bool.self, forKey: .status)
                
                
                
                
                signupUrl = try container.decode(String.self, forKey: .signupUrl)
                
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(isRegistered, forKey: .isRegistered)
                
                
                
                
                try? container.encodeIfPresent(status, forKey: .status)
                
                
                
                
                try? container.encodeIfPresent(signupUrl, forKey: .signupUrl)
                
                
            }
            
        }
        
        /*
            Model: CheckCreditResponse
            Used By: Payment
        */
        class CheckCreditResponse: Codable {
            
            public var success: Bool
            
            public var data: CreditDetail
            

            public enum CodingKeys: String, CodingKey {
                
                case success = "success"
                
                case data = "data"
                
            }

            public init(data: CreditDetail, success: Bool) {
                
                self.success = success
                
                self.data = data
                
            }

            public func duplicate() -> CheckCreditResponse {
                let dict = self.dictionary!
                let copy = CheckCreditResponse(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                success = try container.decode(Bool.self, forKey: .success)
                
                
                
                
                data = try container.decode(CreditDetail.self, forKey: .data)
                
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(success, forKey: .success)
                
                
                
                
                try? container.encodeIfPresent(data, forKey: .data)
                
                
            }
            
        }
        
        /*
            Model: KYCAddress
            Used By: Payment
        */
        class KYCAddress: Codable {
            
            public var pincode: String
            
            public var city: String
            
            public var state: String
            
            public var ownershipType: String?
            
            public var addressline1: String
            
            public var landMark: String?
            
            public var addressline2: String?
            

            public enum CodingKeys: String, CodingKey {
                
                case pincode = "pincode"
                
                case city = "city"
                
                case state = "state"
                
                case ownershipType = "ownership_type"
                
                case addressline1 = "addressline1"
                
                case landMark = "land_mark"
                
                case addressline2 = "addressline2"
                
            }

            public init(addressline1: String, addressline2: String? = nil, city: String, landMark: String? = nil, ownershipType: String? = nil, pincode: String, state: String) {
                
                self.pincode = pincode
                
                self.city = city
                
                self.state = state
                
                self.ownershipType = ownershipType
                
                self.addressline1 = addressline1
                
                self.landMark = landMark
                
                self.addressline2 = addressline2
                
            }

            public func duplicate() -> KYCAddress {
                let dict = self.dictionary!
                let copy = KYCAddress(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                pincode = try container.decode(String.self, forKey: .pincode)
                
                
                
                
                city = try container.decode(String.self, forKey: .city)
                
                
                
                
                state = try container.decode(String.self, forKey: .state)
                
                
                
                
                do {
                    ownershipType = try container.decode(String.self, forKey: .ownershipType)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                addressline1 = try container.decode(String.self, forKey: .addressline1)
                
                
                
                
                do {
                    landMark = try container.decode(String.self, forKey: .landMark)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    addressline2 = try container.decode(String.self, forKey: .addressline2)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(pincode, forKey: .pincode)
                
                
                
                
                try? container.encodeIfPresent(city, forKey: .city)
                
                
                
                
                try? container.encodeIfPresent(state, forKey: .state)
                
                
                
                
                try? container.encode(ownershipType, forKey: .ownershipType)
                
                
                
                
                try? container.encodeIfPresent(addressline1, forKey: .addressline1)
                
                
                
                
                try? container.encode(landMark, forKey: .landMark)
                
                
                
                
                try? container.encode(addressline2, forKey: .addressline2)
                
                
            }
            
        }
        
        /*
            Model: BusinessDetails
            Used By: Payment
        */
        class BusinessDetails: Codable {
            
            public var fssai: String?
            
            public var entityType: String?
            
            public var vintage: String?
            
            public var businessType: String?
            
            public var businessOwnershipType: String?
            
            public var gstin: String?
            
            public var fda: String?
            
            public var name: String?
            
            public var address: KYCAddress?
            
            public var shopAndEstablishment: [String: Any]?
            
            public var pan: String?
            

            public enum CodingKeys: String, CodingKey {
                
                case fssai = "fssai"
                
                case entityType = "entity_type"
                
                case vintage = "vintage"
                
                case businessType = "business_type"
                
                case businessOwnershipType = "business_ownership_type"
                
                case gstin = "gstin"
                
                case fda = "fda"
                
                case name = "name"
                
                case address = "address"
                
                case shopAndEstablishment = "shop_and_establishment"
                
                case pan = "pan"
                
            }

            public init(address: KYCAddress? = nil, businessOwnershipType: String? = nil, businessType: String? = nil, entityType: String? = nil, fda: String? = nil, fssai: String? = nil, gstin: String? = nil, name: String? = nil, pan: String? = nil, shopAndEstablishment: [String: Any]? = nil, vintage: String? = nil) {
                
                self.fssai = fssai
                
                self.entityType = entityType
                
                self.vintage = vintage
                
                self.businessType = businessType
                
                self.businessOwnershipType = businessOwnershipType
                
                self.gstin = gstin
                
                self.fda = fda
                
                self.name = name
                
                self.address = address
                
                self.shopAndEstablishment = shopAndEstablishment
                
                self.pan = pan
                
            }

            public func duplicate() -> BusinessDetails {
                let dict = self.dictionary!
                let copy = BusinessDetails(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                do {
                    fssai = try container.decode(String.self, forKey: .fssai)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    entityType = try container.decode(String.self, forKey: .entityType)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    vintage = try container.decode(String.self, forKey: .vintage)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    businessType = try container.decode(String.self, forKey: .businessType)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    businessOwnershipType = try container.decode(String.self, forKey: .businessOwnershipType)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    gstin = try container.decode(String.self, forKey: .gstin)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    fda = try container.decode(String.self, forKey: .fda)
                
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
                    address = try container.decode(KYCAddress.self, forKey: .address)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    shopAndEstablishment = try container.decode([String: Any].self, forKey: .shopAndEstablishment)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    pan = try container.decode(String.self, forKey: .pan)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encode(fssai, forKey: .fssai)
                
                
                
                
                try? container.encode(entityType, forKey: .entityType)
                
                
                
                
                try? container.encode(vintage, forKey: .vintage)
                
                
                
                
                try? container.encode(businessType, forKey: .businessType)
                
                
                
                
                try? container.encode(businessOwnershipType, forKey: .businessOwnershipType)
                
                
                
                
                try? container.encode(gstin, forKey: .gstin)
                
                
                
                
                try? container.encode(fda, forKey: .fda)
                
                
                
                
                try? container.encode(name, forKey: .name)
                
                
                
                
                try? container.encodeIfPresent(address, forKey: .address)
                
                
                
                
                try? container.encodeIfPresent(shopAndEstablishment, forKey: .shopAndEstablishment)
                
                
                
                
                try? container.encode(pan, forKey: .pan)
                
                
            }
            
        }
        
        /*
            Model: UserPersonalInfoInDetails
            Used By: Payment
        */
        class UserPersonalInfoInDetails: Codable {
            
            public var lastName: String?
            
            public var firstName: String
            
            public var voterId: String?
            
            public var passport: String?
            
            public var mobileVerified: Bool
            
            public var email: String
            
            public var gender: String?
            
            public var phone: String
            
            public var addressAsPerId: KYCAddress
            
            public var fathersName: String?
            
            public var mothersName: String?
            
            public var dob: String
            
            public var drivingLicense: String?
            
            public var middleName: String?
            
            public var pan: String?
            
            public var emailVerified: Bool
            

            public enum CodingKeys: String, CodingKey {
                
                case lastName = "last_name"
                
                case firstName = "first_name"
                
                case voterId = "voter_id"
                
                case passport = "passport"
                
                case mobileVerified = "mobile_verified"
                
                case email = "email"
                
                case gender = "gender"
                
                case phone = "phone"
                
                case addressAsPerId = "address_as_per_id"
                
                case fathersName = "fathers_name"
                
                case mothersName = "mothers_name"
                
                case dob = "dob"
                
                case drivingLicense = "driving_license"
                
                case middleName = "middle_name"
                
                case pan = "pan"
                
                case emailVerified = "email_verified"
                
            }

            public init(addressAsPerId: KYCAddress, dob: String, drivingLicense: String? = nil, email: String, emailVerified: Bool, fathersName: String? = nil, firstName: String, gender: String? = nil, lastName: String? = nil, middleName: String? = nil, mobileVerified: Bool, mothersName: String? = nil, pan: String? = nil, passport: String? = nil, phone: String, voterId: String? = nil) {
                
                self.lastName = lastName
                
                self.firstName = firstName
                
                self.voterId = voterId
                
                self.passport = passport
                
                self.mobileVerified = mobileVerified
                
                self.email = email
                
                self.gender = gender
                
                self.phone = phone
                
                self.addressAsPerId = addressAsPerId
                
                self.fathersName = fathersName
                
                self.mothersName = mothersName
                
                self.dob = dob
                
                self.drivingLicense = drivingLicense
                
                self.middleName = middleName
                
                self.pan = pan
                
                self.emailVerified = emailVerified
                
            }

            public func duplicate() -> UserPersonalInfoInDetails {
                let dict = self.dictionary!
                let copy = UserPersonalInfoInDetails(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                do {
                    lastName = try container.decode(String.self, forKey: .lastName)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                firstName = try container.decode(String.self, forKey: .firstName)
                
                
                
                
                do {
                    voterId = try container.decode(String.self, forKey: .voterId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    passport = try container.decode(String.self, forKey: .passport)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                mobileVerified = try container.decode(Bool.self, forKey: .mobileVerified)
                
                
                
                
                email = try container.decode(String.self, forKey: .email)
                
                
                
                
                do {
                    gender = try container.decode(String.self, forKey: .gender)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                phone = try container.decode(String.self, forKey: .phone)
                
                
                
                
                addressAsPerId = try container.decode(KYCAddress.self, forKey: .addressAsPerId)
                
                
                
                
                do {
                    fathersName = try container.decode(String.self, forKey: .fathersName)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    mothersName = try container.decode(String.self, forKey: .mothersName)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                dob = try container.decode(String.self, forKey: .dob)
                
                
                
                
                do {
                    drivingLicense = try container.decode(String.self, forKey: .drivingLicense)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    middleName = try container.decode(String.self, forKey: .middleName)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    pan = try container.decode(String.self, forKey: .pan)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                emailVerified = try container.decode(Bool.self, forKey: .emailVerified)
                
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encode(lastName, forKey: .lastName)
                
                
                
                
                try? container.encodeIfPresent(firstName, forKey: .firstName)
                
                
                
                
                try? container.encode(voterId, forKey: .voterId)
                
                
                
                
                try? container.encode(passport, forKey: .passport)
                
                
                
                
                try? container.encodeIfPresent(mobileVerified, forKey: .mobileVerified)
                
                
                
                
                try? container.encodeIfPresent(email, forKey: .email)
                
                
                
                
                try? container.encode(gender, forKey: .gender)
                
                
                
                
                try? container.encodeIfPresent(phone, forKey: .phone)
                
                
                
                
                try? container.encodeIfPresent(addressAsPerId, forKey: .addressAsPerId)
                
                
                
                
                try? container.encode(fathersName, forKey: .fathersName)
                
                
                
                
                try? container.encode(mothersName, forKey: .mothersName)
                
                
                
                
                try? container.encode(dob, forKey: .dob)
                
                
                
                
                try? container.encode(drivingLicense, forKey: .drivingLicense)
                
                
                
                
                try? container.encode(middleName, forKey: .middleName)
                
                
                
                
                try? container.encode(pan, forKey: .pan)
                
                
                
                
                try? container.encodeIfPresent(emailVerified, forKey: .emailVerified)
                
                
            }
            
        }
        
        /*
            Model: MarketplaceInfo
            Used By: Payment
        */
        class MarketplaceInfo: Codable {
            
            public var membershipId: String
            
            public var name: String
            
            public var dateOfJoining: String?
            

            public enum CodingKeys: String, CodingKey {
                
                case membershipId = "membership_id"
                
                case name = "name"
                
                case dateOfJoining = "date_of_joining"
                
            }

            public init(dateOfJoining: String? = nil, membershipId: String, name: String) {
                
                self.membershipId = membershipId
                
                self.name = name
                
                self.dateOfJoining = dateOfJoining
                
            }

            public func duplicate() -> MarketplaceInfo {
                let dict = self.dictionary!
                let copy = MarketplaceInfo(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                membershipId = try container.decode(String.self, forKey: .membershipId)
                
                
                
                
                name = try container.decode(String.self, forKey: .name)
                
                
                
                
                do {
                    dateOfJoining = try container.decode(String.self, forKey: .dateOfJoining)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(membershipId, forKey: .membershipId)
                
                
                
                
                try? container.encodeIfPresent(name, forKey: .name)
                
                
                
                
                try? container.encode(dateOfJoining, forKey: .dateOfJoining)
                
                
            }
            
        }
        
        /*
            Model: DeviceDetails
            Used By: Payment
        */
        class DeviceDetails: Codable {
            
            public var deviceModel: String?
            
            public var deviceMake: String?
            
            public var identifierType: String?
            
            public var identificationNumber: String?
            
            public var os: String?
            
            public var osVersion: String?
            
            public var deviceType: String?
            

            public enum CodingKeys: String, CodingKey {
                
                case deviceModel = "device_model"
                
                case deviceMake = "device_make"
                
                case identifierType = "identifier_type"
                
                case identificationNumber = "identification_number"
                
                case os = "os"
                
                case osVersion = "os_version"
                
                case deviceType = "device_type"
                
            }

            public init(deviceMake: String? = nil, deviceModel: String? = nil, deviceType: String? = nil, identificationNumber: String? = nil, identifierType: String? = nil, os: String? = nil, osVersion: String? = nil) {
                
                self.deviceModel = deviceModel
                
                self.deviceMake = deviceMake
                
                self.identifierType = identifierType
                
                self.identificationNumber = identificationNumber
                
                self.os = os
                
                self.osVersion = osVersion
                
                self.deviceType = deviceType
                
            }

            public func duplicate() -> DeviceDetails {
                let dict = self.dictionary!
                let copy = DeviceDetails(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                do {
                    deviceModel = try container.decode(String.self, forKey: .deviceModel)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    deviceMake = try container.decode(String.self, forKey: .deviceMake)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    identifierType = try container.decode(String.self, forKey: .identifierType)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    identificationNumber = try container.decode(String.self, forKey: .identificationNumber)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    os = try container.decode(String.self, forKey: .os)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    osVersion = try container.decode(String.self, forKey: .osVersion)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    deviceType = try container.decode(String.self, forKey: .deviceType)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encode(deviceModel, forKey: .deviceModel)
                
                
                
                
                try? container.encode(deviceMake, forKey: .deviceMake)
                
                
                
                
                try? container.encode(identifierType, forKey: .identifierType)
                
                
                
                
                try? container.encode(identificationNumber, forKey: .identificationNumber)
                
                
                
                
                try? container.encode(os, forKey: .os)
                
                
                
                
                try? container.encode(osVersion, forKey: .osVersion)
                
                
                
                
                try? container.encode(deviceType, forKey: .deviceType)
                
                
            }
            
        }
        
        /*
            Model: CustomerOnboardingRequest
            Used By: Payment
        */
        class CustomerOnboardingRequest: Codable {
            
            public var businessInfo: BusinessDetails?
            
            public var personalInfo: UserPersonalInfoInDetails
            
            public var aggregator: String
            
            public var source: String
            
            public var marketplaceInfo: MarketplaceInfo?
            
            public var device: DeviceDetails?
            

            public enum CodingKeys: String, CodingKey {
                
                case businessInfo = "business_info"
                
                case personalInfo = "personal_info"
                
                case aggregator = "aggregator"
                
                case source = "source"
                
                case marketplaceInfo = "marketplace_info"
                
                case device = "device"
                
            }

            public init(aggregator: String, businessInfo: BusinessDetails? = nil, device: DeviceDetails? = nil, marketplaceInfo: MarketplaceInfo? = nil, personalInfo: UserPersonalInfoInDetails, source: String) {
                
                self.businessInfo = businessInfo
                
                self.personalInfo = personalInfo
                
                self.aggregator = aggregator
                
                self.source = source
                
                self.marketplaceInfo = marketplaceInfo
                
                self.device = device
                
            }

            public func duplicate() -> CustomerOnboardingRequest {
                let dict = self.dictionary!
                let copy = CustomerOnboardingRequest(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                do {
                    businessInfo = try container.decode(BusinessDetails.self, forKey: .businessInfo)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                personalInfo = try container.decode(UserPersonalInfoInDetails.self, forKey: .personalInfo)
                
                
                
                
                aggregator = try container.decode(String.self, forKey: .aggregator)
                
                
                
                
                source = try container.decode(String.self, forKey: .source)
                
                
                
                
                do {
                    marketplaceInfo = try container.decode(MarketplaceInfo.self, forKey: .marketplaceInfo)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    device = try container.decode(DeviceDetails.self, forKey: .device)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(businessInfo, forKey: .businessInfo)
                
                
                
                
                try? container.encodeIfPresent(personalInfo, forKey: .personalInfo)
                
                
                
                
                try? container.encodeIfPresent(aggregator, forKey: .aggregator)
                
                
                
                
                try? container.encodeIfPresent(source, forKey: .source)
                
                
                
                
                try? container.encodeIfPresent(marketplaceInfo, forKey: .marketplaceInfo)
                
                
                
                
                try? container.encodeIfPresent(device, forKey: .device)
                
                
            }
            
        }
        
        /*
            Model: OnboardSummary
            Used By: Payment
        */
        class OnboardSummary: Codable {
            
            public var session: [String: Any]
            
            public var status: Bool
            
            public var redirectUrl: String
            

            public enum CodingKeys: String, CodingKey {
                
                case session = "session"
                
                case status = "status"
                
                case redirectUrl = "redirect_url"
                
            }

            public init(redirectUrl: String, session: [String: Any], status: Bool) {
                
                self.session = session
                
                self.status = status
                
                self.redirectUrl = redirectUrl
                
            }

            public func duplicate() -> OnboardSummary {
                let dict = self.dictionary!
                let copy = OnboardSummary(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                session = try container.decode([String: Any].self, forKey: .session)
                
                
                
                
                status = try container.decode(Bool.self, forKey: .status)
                
                
                
                
                redirectUrl = try container.decode(String.self, forKey: .redirectUrl)
                
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(session, forKey: .session)
                
                
                
                
                try? container.encodeIfPresent(status, forKey: .status)
                
                
                
                
                try? container.encodeIfPresent(redirectUrl, forKey: .redirectUrl)
                
                
            }
            
        }
        
        /*
            Model: CustomerOnboardingResponse
            Used By: Payment
        */
        class CustomerOnboardingResponse: Codable {
            
            public var success: Bool
            
            public var data: OnboardSummary
            

            public enum CodingKeys: String, CodingKey {
                
                case success = "success"
                
                case data = "data"
                
            }

            public init(data: OnboardSummary, success: Bool) {
                
                self.success = success
                
                self.data = data
                
            }

            public func duplicate() -> CustomerOnboardingResponse {
                let dict = self.dictionary!
                let copy = CustomerOnboardingResponse(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                success = try container.decode(Bool.self, forKey: .success)
                
                
                
                
                data = try container.decode(OnboardSummary.self, forKey: .data)
                
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(success, forKey: .success)
                
                
                
                
                try? container.encodeIfPresent(data, forKey: .data)
                
                
            }
            
        }
        
}
