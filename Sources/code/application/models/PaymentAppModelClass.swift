import Foundation


import Foundation
public extension ApplicationClient {
  
        /*
            Model: AggregatorConfigDetail
            Used By: Payment
        */
        class AggregatorConfigDetail: Codable {
            
            public var configType: String
            
            public var merchantKey: String?
            
            public var key: String
            
            public var pin: String?
            
            public var api: String?
            
            public var sdk: Bool?
            
            public var secret: String
            
            public var userId: String?
            
            public var verifyApi: String?
            
            public var merchantId: String?
            

            public enum CodingKeys: String, CodingKey {
                
                case configType = "config_type"
                
                case merchantKey = "merchant_key"
                
                case key = "key"
                
                case pin = "pin"
                
                case api = "api"
                
                case sdk = "sdk"
                
                case secret = "secret"
                
                case userId = "user_id"
                
                case verifyApi = "verify_api"
                
                case merchantId = "merchant_id"
                
            }

            public init(api: String?, configType: String, key: String, merchantId: String?, merchantKey: String?, pin: String?, sdk: Bool?, secret: String, userId: String?, verifyApi: String?) {
                
                self.configType = configType
                
                self.merchantKey = merchantKey
                
                self.key = key
                
                self.pin = pin
                
                self.api = api
                
                self.sdk = sdk
                
                self.secret = secret
                
                self.userId = userId
                
                self.verifyApi = verifyApi
                
                self.merchantId = merchantId
                
            }

            public func duplicate() -> AggregatorConfigDetail {
                let dict = self.dictionary!
                let copy = AggregatorConfigDetail(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                configType = try container.decode(String.self, forKey: .configType)
                
                
                
                
                do {
                    merchantKey = try container.decode(String.self, forKey: .merchantKey)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                key = try container.decode(String.self, forKey: .key)
                
                
                
                
                do {
                    pin = try container.decode(String.self, forKey: .pin)
                
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
                
                
                
                secret = try container.decode(String.self, forKey: .secret)
                
                
                
                
                do {
                    userId = try container.decode(String.self, forKey: .userId)
                
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
                    merchantId = try container.decode(String.self, forKey: .merchantId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(configType, forKey: .configType)
                
                
                
                
                try? container.encode(merchantKey, forKey: .merchantKey)
                
                
                
                
                try? container.encodeIfPresent(key, forKey: .key)
                
                
                
                
                try? container.encode(pin, forKey: .pin)
                
                
                
                
                try? container.encode(api, forKey: .api)
                
                
                
                
                try? container.encode(sdk, forKey: .sdk)
                
                
                
                
                try? container.encodeIfPresent(secret, forKey: .secret)
                
                
                
                
                try? container.encode(userId, forKey: .userId)
                
                
                
                
                try? container.encode(verifyApi, forKey: .verifyApi)
                
                
                
                
                try? container.encode(merchantId, forKey: .merchantId)
                
                
            }
            
        }
        
        /*
            Model: AggregatorsConfigDetailResponse
            Used By: Payment
        */
        class AggregatorsConfigDetailResponse: Codable {
            
            public var mswipe: AggregatorConfigDetail?
            
            public var env: String
            
            public var juspay: AggregatorConfigDetail?
            
            public var rupifi: AggregatorConfigDetail?
            
            public var success: Bool
            
            public var razorpay: AggregatorConfigDetail?
            
            public var ccavenue: AggregatorConfigDetail?
            
            public var payumoney: AggregatorConfigDetail?
            
            public var simpl: AggregatorConfigDetail?
            
            public var stripe: AggregatorConfigDetail?
            

            public enum CodingKeys: String, CodingKey {
                
                case mswipe = "mswipe"
                
                case env = "env"
                
                case juspay = "juspay"
                
                case rupifi = "rupifi"
                
                case success = "success"
                
                case razorpay = "razorpay"
                
                case ccavenue = "ccavenue"
                
                case payumoney = "payumoney"
                
                case simpl = "simpl"
                
                case stripe = "stripe"
                
            }

            public init(ccavenue: AggregatorConfigDetail?, env: String, juspay: AggregatorConfigDetail?, mswipe: AggregatorConfigDetail?, payumoney: AggregatorConfigDetail?, razorpay: AggregatorConfigDetail?, rupifi: AggregatorConfigDetail?, simpl: AggregatorConfigDetail?, stripe: AggregatorConfigDetail?, success: Bool) {
                
                self.mswipe = mswipe
                
                self.env = env
                
                self.juspay = juspay
                
                self.rupifi = rupifi
                
                self.success = success
                
                self.razorpay = razorpay
                
                self.ccavenue = ccavenue
                
                self.payumoney = payumoney
                
                self.simpl = simpl
                
                self.stripe = stripe
                
            }

            public func duplicate() -> AggregatorsConfigDetailResponse {
                let dict = self.dictionary!
                let copy = AggregatorsConfigDetailResponse(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                do {
                    mswipe = try container.decode(AggregatorConfigDetail.self, forKey: .mswipe)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                env = try container.decode(String.self, forKey: .env)
                
                
                
                
                do {
                    juspay = try container.decode(AggregatorConfigDetail.self, forKey: .juspay)
                
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
                
                
                
                success = try container.decode(Bool.self, forKey: .success)
                
                
                
                
                do {
                    razorpay = try container.decode(AggregatorConfigDetail.self, forKey: .razorpay)
                
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
                    payumoney = try container.decode(AggregatorConfigDetail.self, forKey: .payumoney)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    simpl = try container.decode(AggregatorConfigDetail.self, forKey: .simpl)
                
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
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(mswipe, forKey: .mswipe)
                
                
                
                
                try? container.encodeIfPresent(env, forKey: .env)
                
                
                
                
                try? container.encodeIfPresent(juspay, forKey: .juspay)
                
                
                
                
                try? container.encodeIfPresent(rupifi, forKey: .rupifi)
                
                
                
                
                try? container.encodeIfPresent(success, forKey: .success)
                
                
                
                
                try? container.encodeIfPresent(razorpay, forKey: .razorpay)
                
                
                
                
                try? container.encodeIfPresent(ccavenue, forKey: .ccavenue)
                
                
                
                
                try? container.encodeIfPresent(payumoney, forKey: .payumoney)
                
                
                
                
                try? container.encodeIfPresent(simpl, forKey: .simpl)
                
                
                
                
                try? container.encodeIfPresent(stripe, forKey: .stripe)
                
                
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
            
            public var nameOnCard: String?
            
            public var nickname: String?
            
            public var cardId: String
            
            public var refresh: Bool?
            

            public enum CodingKeys: String, CodingKey {
                
                case nameOnCard = "name_on_card"
                
                case nickname = "nickname"
                
                case cardId = "card_id"
                
                case refresh = "refresh"
                
            }

            public init(cardId: String, nameOnCard: String?, nickname: String?, refresh: Bool?) {
                
                self.nameOnCard = nameOnCard
                
                self.nickname = nickname
                
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
                    nameOnCard = try container.decode(String.self, forKey: .nameOnCard)
                
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
                
                
                
                try? container.encodeIfPresent(nameOnCard, forKey: .nameOnCard)
                
                
                
                
                try? container.encodeIfPresent(nickname, forKey: .nickname)
                
                
                
                
                try? container.encode(cardId, forKey: .cardId)
                
                
                
                
                try? container.encode(refresh, forKey: .refresh)
                
                
            }
            
        }
        
        /*
            Model: AttachCardsResponse
            Used By: Payment
        */
        class AttachCardsResponse: Codable {
            
            public var message: String?
            
            public var success: Bool
            
            public var data: [String: Any]
            

            public enum CodingKeys: String, CodingKey {
                
                case message = "message"
                
                case success = "success"
                
                case data = "data"
                
            }

            public init(data: [String: Any], message: String?, success: Bool) {
                
                self.message = message
                
                self.success = success
                
                self.data = data
                
            }

            public func duplicate() -> AttachCardsResponse {
                let dict = self.dictionary!
                let copy = AttachCardsResponse(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                do {
                    message = try container.decode(String.self, forKey: .message)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                success = try container.decode(Bool.self, forKey: .success)
                
                
                
                
                data = try container.decode([String: Any].self, forKey: .data)
                
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(message, forKey: .message)
                
                
                
                
                try? container.encodeIfPresent(success, forKey: .success)
                
                
                
                
                try? container.encodeIfPresent(data, forKey: .data)
                
                
            }
            
        }
        
        /*
            Model: CardPaymentGateway
            Used By: Payment
        */
        class CardPaymentGateway: Codable {
            
            public var customerId: String?
            
            public var aggregator: String
            
            public var api: String?
            

            public enum CodingKeys: String, CodingKey {
                
                case customerId = "customer_id"
                
                case aggregator = "aggregator"
                
                case api = "api"
                
            }

            public init(aggregator: String, api: String?, customerId: String?) {
                
                self.customerId = customerId
                
                self.aggregator = aggregator
                
                self.api = api
                
            }

            public func duplicate() -> CardPaymentGateway {
                let dict = self.dictionary!
                let copy = CardPaymentGateway(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                do {
                    customerId = try container.decode(String.self, forKey: .customerId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                aggregator = try container.decode(String.self, forKey: .aggregator)
                
                
                
                
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
                
                
                
                try? container.encode(customerId, forKey: .customerId)
                
                
                
                
                try? container.encodeIfPresent(aggregator, forKey: .aggregator)
                
                
                
                
                try? container.encode(api, forKey: .api)
                
                
            }
            
        }
        
        /*
            Model: ActiveCardPaymentGatewayResponse
            Used By: Payment
        */
        class ActiveCardPaymentGatewayResponse: Codable {
            
            public var message: String
            
            public var success: Bool
            
            public var cards: CardPaymentGateway
            

            public enum CodingKeys: String, CodingKey {
                
                case message = "message"
                
                case success = "success"
                
                case cards = "cards"
                
            }

            public init(cards: CardPaymentGateway, message: String, success: Bool) {
                
                self.message = message
                
                self.success = success
                
                self.cards = cards
                
            }

            public func duplicate() -> ActiveCardPaymentGatewayResponse {
                let dict = self.dictionary!
                let copy = ActiveCardPaymentGatewayResponse(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                message = try container.decode(String.self, forKey: .message)
                
                
                
                
                success = try container.decode(Bool.self, forKey: .success)
                
                
                
                
                cards = try container.decode(CardPaymentGateway.self, forKey: .cards)
                
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(message, forKey: .message)
                
                
                
                
                try? container.encodeIfPresent(success, forKey: .success)
                
                
                
                
                try? container.encodeIfPresent(cards, forKey: .cards)
                
                
            }
            
        }
        
        /*
            Model: Card
            Used By: Payment
        */
        class Card: Codable {
            
            public var cardReference: String?
            
            public var cardIsin: String?
            
            public var cardToken: String?
            
            public var expMonth: Int?
            
            public var cardName: String?
            
            public var nickname: String?
            
            public var cardType: String?
            
            public var cardBrandImage: String?
            
            public var expYear: Int?
            
            public var expired: Bool?
            
            public var cardFingerprint: String?
            
            public var cardBrand: String?
            
            public var aggregatorName: String
            
            public var cardIssuer: String?
            
            public var cardId: String?
            
            public var cardNumber: String?
            

            public enum CodingKeys: String, CodingKey {
                
                case cardReference = "card_reference"
                
                case cardIsin = "card_isin"
                
                case cardToken = "card_token"
                
                case expMonth = "exp_month"
                
                case cardName = "card_name"
                
                case nickname = "nickname"
                
                case cardType = "card_type"
                
                case cardBrandImage = "card_brand_image"
                
                case expYear = "exp_year"
                
                case expired = "expired"
                
                case cardFingerprint = "card_fingerprint"
                
                case cardBrand = "card_brand"
                
                case aggregatorName = "aggregator_name"
                
                case cardIssuer = "card_issuer"
                
                case cardId = "card_id"
                
                case cardNumber = "card_number"
                
            }

            public init(aggregatorName: String, cardBrand: String?, cardBrandImage: String?, cardFingerprint: String?, cardId: String?, cardIsin: String?, cardIssuer: String?, cardName: String?, cardNumber: String?, cardReference: String?, cardToken: String?, cardType: String?, expired: Bool?, expMonth: Int?, expYear: Int?, nickname: String?) {
                
                self.cardReference = cardReference
                
                self.cardIsin = cardIsin
                
                self.cardToken = cardToken
                
                self.expMonth = expMonth
                
                self.cardName = cardName
                
                self.nickname = nickname
                
                self.cardType = cardType
                
                self.cardBrandImage = cardBrandImage
                
                self.expYear = expYear
                
                self.expired = expired
                
                self.cardFingerprint = cardFingerprint
                
                self.cardBrand = cardBrand
                
                self.aggregatorName = aggregatorName
                
                self.cardIssuer = cardIssuer
                
                self.cardId = cardId
                
                self.cardNumber = cardNumber
                
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
                    cardIsin = try container.decode(String.self, forKey: .cardIsin)
                
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
                
                
                
                do {
                    expMonth = try container.decode(Int.self, forKey: .expMonth)
                
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
                    nickname = try container.decode(String.self, forKey: .nickname)
                
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
                    cardBrandImage = try container.decode(String.self, forKey: .cardBrandImage)
                
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
                    expired = try container.decode(Bool.self, forKey: .expired)
                
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
                    cardBrand = try container.decode(String.self, forKey: .cardBrand)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                aggregatorName = try container.decode(String.self, forKey: .aggregatorName)
                
                
                
                
                do {
                    cardIssuer = try container.decode(String.self, forKey: .cardIssuer)
                
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
                    cardNumber = try container.decode(String.self, forKey: .cardNumber)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encode(cardReference, forKey: .cardReference)
                
                
                
                
                try? container.encode(cardIsin, forKey: .cardIsin)
                
                
                
                
                try? container.encode(cardToken, forKey: .cardToken)
                
                
                
                
                try? container.encode(expMonth, forKey: .expMonth)
                
                
                
                
                try? container.encode(cardName, forKey: .cardName)
                
                
                
                
                try? container.encode(nickname, forKey: .nickname)
                
                
                
                
                try? container.encode(cardType, forKey: .cardType)
                
                
                
                
                try? container.encode(cardBrandImage, forKey: .cardBrandImage)
                
                
                
                
                try? container.encode(expYear, forKey: .expYear)
                
                
                
                
                try? container.encode(expired, forKey: .expired)
                
                
                
                
                try? container.encode(cardFingerprint, forKey: .cardFingerprint)
                
                
                
                
                try? container.encode(cardBrand, forKey: .cardBrand)
                
                
                
                
                try? container.encodeIfPresent(aggregatorName, forKey: .aggregatorName)
                
                
                
                
                try? container.encode(cardIssuer, forKey: .cardIssuer)
                
                
                
                
                try? container.encode(cardId, forKey: .cardId)
                
                
                
                
                try? container.encode(cardNumber, forKey: .cardNumber)
                
                
            }
            
        }
        
        /*
            Model: ListCardsResponse
            Used By: Payment
        */
        class ListCardsResponse: Codable {
            
            public var message: String
            
            public var success: Bool
            
            public var data: [Card]?
            

            public enum CodingKeys: String, CodingKey {
                
                case message = "message"
                
                case success = "success"
                
                case data = "data"
                
            }

            public init(data: [Card]?, message: String, success: Bool) {
                
                self.message = message
                
                self.success = success
                
                self.data = data
                
            }

            public func duplicate() -> ListCardsResponse {
                let dict = self.dictionary!
                let copy = ListCardsResponse(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                message = try container.decode(String.self, forKey: .message)
                
                
                
                
                success = try container.decode(Bool.self, forKey: .success)
                
                
                
                
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
                
                
                
                try? container.encodeIfPresent(message, forKey: .message)
                
                
                
                
                try? container.encodeIfPresent(success, forKey: .success)
                
                
                
                
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
            
            public var message: String?
            
            public var success: Bool
            

            public enum CodingKeys: String, CodingKey {
                
                case message = "message"
                
                case success = "success"
                
            }

            public init(message: String?, success: Bool) {
                
                self.message = message
                
                self.success = success
                
            }

            public func duplicate() -> DeleteCardsResponse {
                let dict = self.dictionary!
                let copy = DeleteCardsResponse(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                do {
                    message = try container.decode(String.self, forKey: .message)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                success = try container.decode(Bool.self, forKey: .success)
                
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encode(message, forKey: .message)
                
                
                
                
                try? container.encodeIfPresent(success, forKey: .success)
                
                
            }
            
        }
        
        /*
            Model: ValidateCustomerRequest
            Used By: Payment
        */
        class ValidateCustomerRequest: Codable {
            
            public var aggregator: String
            
            public var phoneNumber: String
            
            public var transactionAmountInPaise: Int
            
            public var payload: String
            
            public var merchantParams: [String: Any]
            

            public enum CodingKeys: String, CodingKey {
                
                case aggregator = "aggregator"
                
                case phoneNumber = "phone_number"
                
                case transactionAmountInPaise = "transaction_amount_in_paise"
                
                case payload = "payload"
                
                case merchantParams = "merchant_params"
                
            }

            public init(aggregator: String, merchantParams: [String: Any], payload: String, phoneNumber: String, transactionAmountInPaise: Int) {
                
                self.aggregator = aggregator
                
                self.phoneNumber = phoneNumber
                
                self.transactionAmountInPaise = transactionAmountInPaise
                
                self.payload = payload
                
                self.merchantParams = merchantParams
                
            }

            public func duplicate() -> ValidateCustomerRequest {
                let dict = self.dictionary!
                let copy = ValidateCustomerRequest(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                aggregator = try container.decode(String.self, forKey: .aggregator)
                
                
                
                
                phoneNumber = try container.decode(String.self, forKey: .phoneNumber)
                
                
                
                
                transactionAmountInPaise = try container.decode(Int.self, forKey: .transactionAmountInPaise)
                
                
                
                
                payload = try container.decode(String.self, forKey: .payload)
                
                
                
                
                merchantParams = try container.decode([String: Any].self, forKey: .merchantParams)
                
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(aggregator, forKey: .aggregator)
                
                
                
                
                try? container.encodeIfPresent(phoneNumber, forKey: .phoneNumber)
                
                
                
                
                try? container.encodeIfPresent(transactionAmountInPaise, forKey: .transactionAmountInPaise)
                
                
                
                
                try? container.encode(payload, forKey: .payload)
                
                
                
                
                try? container.encodeIfPresent(merchantParams, forKey: .merchantParams)
                
                
            }
            
        }
        
        /*
            Model: ValidateCustomerResponse
            Used By: Payment
        */
        class ValidateCustomerResponse: Codable {
            
            public var message: String
            
            public var success: Bool
            
            public var data: [String: Any]
            

            public enum CodingKeys: String, CodingKey {
                
                case message = "message"
                
                case success = "success"
                
                case data = "data"
                
            }

            public init(data: [String: Any], message: String, success: Bool) {
                
                self.message = message
                
                self.success = success
                
                self.data = data
                
            }

            public func duplicate() -> ValidateCustomerResponse {
                let dict = self.dictionary!
                let copy = ValidateCustomerResponse(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                message = try container.decode(String.self, forKey: .message)
                
                
                
                
                success = try container.decode(Bool.self, forKey: .success)
                
                
                
                
                data = try container.decode([String: Any].self, forKey: .data)
                
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(message, forKey: .message)
                
                
                
                
                try? container.encodeIfPresent(success, forKey: .success)
                
                
                
                
                try? container.encodeIfPresent(data, forKey: .data)
                
                
            }
            
        }
        
        /*
            Model: ChargeCustomerRequest
            Used By: Payment
        */
        class ChargeCustomerRequest: Codable {
            
            public var aggregator: String
            
            public var amount: Int
            
            public var orderId: String
            
            public var transactionToken: String?
            
            public var verified: Bool?
            

            public enum CodingKeys: String, CodingKey {
                
                case aggregator = "aggregator"
                
                case amount = "amount"
                
                case orderId = "order_id"
                
                case transactionToken = "transaction_token"
                
                case verified = "verified"
                
            }

            public init(aggregator: String, amount: Int, orderId: String, transactionToken: String?, verified: Bool?) {
                
                self.aggregator = aggregator
                
                self.amount = amount
                
                self.orderId = orderId
                
                self.transactionToken = transactionToken
                
                self.verified = verified
                
            }

            public func duplicate() -> ChargeCustomerRequest {
                let dict = self.dictionary!
                let copy = ChargeCustomerRequest(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                aggregator = try container.decode(String.self, forKey: .aggregator)
                
                
                
                
                amount = try container.decode(Int.self, forKey: .amount)
                
                
                
                
                orderId = try container.decode(String.self, forKey: .orderId)
                
                
                
                
                do {
                    transactionToken = try container.decode(String.self, forKey: .transactionToken)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
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
                
                
                
                try? container.encodeIfPresent(aggregator, forKey: .aggregator)
                
                
                
                
                try? container.encode(amount, forKey: .amount)
                
                
                
                
                try? container.encodeIfPresent(orderId, forKey: .orderId)
                
                
                
                
                try? container.encode(transactionToken, forKey: .transactionToken)
                
                
                
                
                try? container.encode(verified, forKey: .verified)
                
                
            }
            
        }
        
        /*
            Model: ChargeCustomerResponse
            Used By: Payment
        */
        class ChargeCustomerResponse: Codable {
            
            public var aggregator: String
            
            public var deliveryAddressId: String?
            
            public var message: String
            
            public var success: Bool
            
            public var cartId: String?
            
            public var status: String
            
            public var orderId: String
            

            public enum CodingKeys: String, CodingKey {
                
                case aggregator = "aggregator"
                
                case deliveryAddressId = "delivery_address_id"
                
                case message = "message"
                
                case success = "success"
                
                case cartId = "cart_id"
                
                case status = "status"
                
                case orderId = "order_id"
                
            }

            public init(aggregator: String, cartId: String?, deliveryAddressId: String?, message: String, orderId: String, status: String, success: Bool) {
                
                self.aggregator = aggregator
                
                self.deliveryAddressId = deliveryAddressId
                
                self.message = message
                
                self.success = success
                
                self.cartId = cartId
                
                self.status = status
                
                self.orderId = orderId
                
            }

            public func duplicate() -> ChargeCustomerResponse {
                let dict = self.dictionary!
                let copy = ChargeCustomerResponse(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                aggregator = try container.decode(String.self, forKey: .aggregator)
                
                
                
                
                do {
                    deliveryAddressId = try container.decode(String.self, forKey: .deliveryAddressId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                message = try container.decode(String.self, forKey: .message)
                
                
                
                
                success = try container.decode(Bool.self, forKey: .success)
                
                
                
                
                do {
                    cartId = try container.decode(String.self, forKey: .cartId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                status = try container.decode(String.self, forKey: .status)
                
                
                
                
                orderId = try container.decode(String.self, forKey: .orderId)
                
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(aggregator, forKey: .aggregator)
                
                
                
                
                try? container.encode(deliveryAddressId, forKey: .deliveryAddressId)
                
                
                
                
                try? container.encodeIfPresent(message, forKey: .message)
                
                
                
                
                try? container.encodeIfPresent(success, forKey: .success)
                
                
                
                
                try? container.encode(cartId, forKey: .cartId)
                
                
                
                
                try? container.encodeIfPresent(status, forKey: .status)
                
                
                
                
                try? container.encodeIfPresent(orderId, forKey: .orderId)
                
                
            }
            
        }
        
        /*
            Model: PaymentInitializationRequest
            Used By: Payment
        */
        class PaymentInitializationRequest: Codable {
            
            public var aggregator: String
            
            public var timeout: Int?
            
            public var contact: String
            
            public var vpa: String?
            
            public var customerId: String
            
            public var amount: Int
            
            public var merchantOrderId: String
            
            public var method: String
            
            public var currency: String
            
            public var razorpayPaymentId: String?
            
            public var orderId: String
            
            public var email: String
            

            public enum CodingKeys: String, CodingKey {
                
                case aggregator = "aggregator"
                
                case timeout = "timeout"
                
                case contact = "contact"
                
                case vpa = "vpa"
                
                case customerId = "customer_id"
                
                case amount = "amount"
                
                case merchantOrderId = "merchant_order_id"
                
                case method = "method"
                
                case currency = "currency"
                
                case razorpayPaymentId = "razorpay_payment_id"
                
                case orderId = "order_id"
                
                case email = "email"
                
            }

            public init(aggregator: String, amount: Int, contact: String, currency: String, customerId: String, email: String, merchantOrderId: String, method: String, orderId: String, razorpayPaymentId: String?, timeout: Int?, vpa: String?) {
                
                self.aggregator = aggregator
                
                self.timeout = timeout
                
                self.contact = contact
                
                self.vpa = vpa
                
                self.customerId = customerId
                
                self.amount = amount
                
                self.merchantOrderId = merchantOrderId
                
                self.method = method
                
                self.currency = currency
                
                self.razorpayPaymentId = razorpayPaymentId
                
                self.orderId = orderId
                
                self.email = email
                
            }

            public func duplicate() -> PaymentInitializationRequest {
                let dict = self.dictionary!
                let copy = PaymentInitializationRequest(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                aggregator = try container.decode(String.self, forKey: .aggregator)
                
                
                
                
                do {
                    timeout = try container.decode(Int.self, forKey: .timeout)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                contact = try container.decode(String.self, forKey: .contact)
                
                
                
                
                do {
                    vpa = try container.decode(String.self, forKey: .vpa)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                customerId = try container.decode(String.self, forKey: .customerId)
                
                
                
                
                amount = try container.decode(Int.self, forKey: .amount)
                
                
                
                
                merchantOrderId = try container.decode(String.self, forKey: .merchantOrderId)
                
                
                
                
                method = try container.decode(String.self, forKey: .method)
                
                
                
                
                currency = try container.decode(String.self, forKey: .currency)
                
                
                
                
                do {
                    razorpayPaymentId = try container.decode(String.self, forKey: .razorpayPaymentId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                orderId = try container.decode(String.self, forKey: .orderId)
                
                
                
                
                email = try container.decode(String.self, forKey: .email)
                
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(aggregator, forKey: .aggregator)
                
                
                
                
                try? container.encode(timeout, forKey: .timeout)
                
                
                
                
                try? container.encodeIfPresent(contact, forKey: .contact)
                
                
                
                
                try? container.encode(vpa, forKey: .vpa)
                
                
                
                
                try? container.encodeIfPresent(customerId, forKey: .customerId)
                
                
                
                
                try? container.encode(amount, forKey: .amount)
                
                
                
                
                try? container.encodeIfPresent(merchantOrderId, forKey: .merchantOrderId)
                
                
                
                
                try? container.encodeIfPresent(method, forKey: .method)
                
                
                
                
                try? container.encodeIfPresent(currency, forKey: .currency)
                
                
                
                
                try? container.encode(razorpayPaymentId, forKey: .razorpayPaymentId)
                
                
                
                
                try? container.encodeIfPresent(orderId, forKey: .orderId)
                
                
                
                
                try? container.encodeIfPresent(email, forKey: .email)
                
                
            }
            
        }
        
        /*
            Model: PaymentInitializationResponse
            Used By: Payment
        */
        class PaymentInitializationResponse: Codable {
            
            public var aggregator: String
            
            public var bqrImage: String?
            
            public var timeout: Int?
            
            public var vpa: String?
            
            public var upiPollUrl: String?
            
            public var customerId: String?
            
            public var success: Bool
            
            public var amount: Int?
            
            public var merchantOrderId: String
            
            public var method: String
            
            public var virtualId: String?
            
            public var currency: String?
            
            public var status: String?
            
            public var aggregatorOrderId: String?
            
            public var razorpayPaymentId: String?
            
            public var pollingUrl: String
            

            public enum CodingKeys: String, CodingKey {
                
                case aggregator = "aggregator"
                
                case bqrImage = "bqr_image"
                
                case timeout = "timeout"
                
                case vpa = "vpa"
                
                case upiPollUrl = "upi_poll_url"
                
                case customerId = "customer_id"
                
                case success = "success"
                
                case amount = "amount"
                
                case merchantOrderId = "merchant_order_id"
                
                case method = "method"
                
                case virtualId = "virtual_id"
                
                case currency = "currency"
                
                case status = "status"
                
                case aggregatorOrderId = "aggregator_order_id"
                
                case razorpayPaymentId = "razorpay_payment_id"
                
                case pollingUrl = "polling_url"
                
            }

            public init(aggregator: String, aggregatorOrderId: String?, amount: Int?, bqrImage: String?, currency: String?, customerId: String?, merchantOrderId: String, method: String, pollingUrl: String, razorpayPaymentId: String?, status: String?, success: Bool, timeout: Int?, upiPollUrl: String?, virtualId: String?, vpa: String?) {
                
                self.aggregator = aggregator
                
                self.bqrImage = bqrImage
                
                self.timeout = timeout
                
                self.vpa = vpa
                
                self.upiPollUrl = upiPollUrl
                
                self.customerId = customerId
                
                self.success = success
                
                self.amount = amount
                
                self.merchantOrderId = merchantOrderId
                
                self.method = method
                
                self.virtualId = virtualId
                
                self.currency = currency
                
                self.status = status
                
                self.aggregatorOrderId = aggregatorOrderId
                
                self.razorpayPaymentId = razorpayPaymentId
                
                self.pollingUrl = pollingUrl
                
            }

            public func duplicate() -> PaymentInitializationResponse {
                let dict = self.dictionary!
                let copy = PaymentInitializationResponse(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                aggregator = try container.decode(String.self, forKey: .aggregator)
                
                
                
                
                do {
                    bqrImage = try container.decode(String.self, forKey: .bqrImage)
                
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
                    vpa = try container.decode(String.self, forKey: .vpa)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    upiPollUrl = try container.decode(String.self, forKey: .upiPollUrl)
                
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
                
                
                
                success = try container.decode(Bool.self, forKey: .success)
                
                
                
                
                do {
                    amount = try container.decode(Int.self, forKey: .amount)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                merchantOrderId = try container.decode(String.self, forKey: .merchantOrderId)
                
                
                
                
                method = try container.decode(String.self, forKey: .method)
                
                
                
                
                do {
                    virtualId = try container.decode(String.self, forKey: .virtualId)
                
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
                    status = try container.decode(String.self, forKey: .status)
                
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
                    razorpayPaymentId = try container.decode(String.self, forKey: .razorpayPaymentId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                pollingUrl = try container.decode(String.self, forKey: .pollingUrl)
                
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(aggregator, forKey: .aggregator)
                
                
                
                
                try? container.encode(bqrImage, forKey: .bqrImage)
                
                
                
                
                try? container.encode(timeout, forKey: .timeout)
                
                
                
                
                try? container.encode(vpa, forKey: .vpa)
                
                
                
                
                try? container.encode(upiPollUrl, forKey: .upiPollUrl)
                
                
                
                
                try? container.encode(customerId, forKey: .customerId)
                
                
                
                
                try? container.encodeIfPresent(success, forKey: .success)
                
                
                
                
                try? container.encode(amount, forKey: .amount)
                
                
                
                
                try? container.encodeIfPresent(merchantOrderId, forKey: .merchantOrderId)
                
                
                
                
                try? container.encodeIfPresent(method, forKey: .method)
                
                
                
                
                try? container.encode(virtualId, forKey: .virtualId)
                
                
                
                
                try? container.encode(currency, forKey: .currency)
                
                
                
                
                try? container.encodeIfPresent(status, forKey: .status)
                
                
                
                
                try? container.encodeIfPresent(aggregatorOrderId, forKey: .aggregatorOrderId)
                
                
                
                
                try? container.encode(razorpayPaymentId, forKey: .razorpayPaymentId)
                
                
                
                
                try? container.encodeIfPresent(pollingUrl, forKey: .pollingUrl)
                
                
            }
            
        }
        
        /*
            Model: PaymentStatusUpdateRequest
            Used By: Payment
        */
        class PaymentStatusUpdateRequest: Codable {
            
            public var aggregator: String
            
            public var vpa: String
            
            public var customerId: String
            
            public var amount: Int
            
            public var merchantOrderId: String
            
            public var method: String
            
            public var currency: String
            
            public var status: String
            
            public var contact: String
            
            public var orderId: String
            
            public var email: String
            

            public enum CodingKeys: String, CodingKey {
                
                case aggregator = "aggregator"
                
                case vpa = "vpa"
                
                case customerId = "customer_id"
                
                case amount = "amount"
                
                case merchantOrderId = "merchant_order_id"
                
                case method = "method"
                
                case currency = "currency"
                
                case status = "status"
                
                case contact = "contact"
                
                case orderId = "order_id"
                
                case email = "email"
                
            }

            public init(aggregator: String, amount: Int, contact: String, currency: String, customerId: String, email: String, merchantOrderId: String, method: String, orderId: String, status: String, vpa: String) {
                
                self.aggregator = aggregator
                
                self.vpa = vpa
                
                self.customerId = customerId
                
                self.amount = amount
                
                self.merchantOrderId = merchantOrderId
                
                self.method = method
                
                self.currency = currency
                
                self.status = status
                
                self.contact = contact
                
                self.orderId = orderId
                
                self.email = email
                
            }

            public func duplicate() -> PaymentStatusUpdateRequest {
                let dict = self.dictionary!
                let copy = PaymentStatusUpdateRequest(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                aggregator = try container.decode(String.self, forKey: .aggregator)
                
                
                
                
                vpa = try container.decode(String.self, forKey: .vpa)
                
                
                
                
                customerId = try container.decode(String.self, forKey: .customerId)
                
                
                
                
                amount = try container.decode(Int.self, forKey: .amount)
                
                
                
                
                merchantOrderId = try container.decode(String.self, forKey: .merchantOrderId)
                
                
                
                
                method = try container.decode(String.self, forKey: .method)
                
                
                
                
                currency = try container.decode(String.self, forKey: .currency)
                
                
                
                
                status = try container.decode(String.self, forKey: .status)
                
                
                
                
                contact = try container.decode(String.self, forKey: .contact)
                
                
                
                
                orderId = try container.decode(String.self, forKey: .orderId)
                
                
                
                
                email = try container.decode(String.self, forKey: .email)
                
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(aggregator, forKey: .aggregator)
                
                
                
                
                try? container.encodeIfPresent(vpa, forKey: .vpa)
                
                
                
                
                try? container.encodeIfPresent(customerId, forKey: .customerId)
                
                
                
                
                try? container.encode(amount, forKey: .amount)
                
                
                
                
                try? container.encodeIfPresent(merchantOrderId, forKey: .merchantOrderId)
                
                
                
                
                try? container.encodeIfPresent(method, forKey: .method)
                
                
                
                
                try? container.encodeIfPresent(currency, forKey: .currency)
                
                
                
                
                try? container.encodeIfPresent(status, forKey: .status)
                
                
                
                
                try? container.encodeIfPresent(contact, forKey: .contact)
                
                
                
                
                try? container.encodeIfPresent(orderId, forKey: .orderId)
                
                
                
                
                try? container.encodeIfPresent(email, forKey: .email)
                
                
            }
            
        }
        
        /*
            Model: PaymentStatusUpdateResponse
            Used By: Payment
        */
        class PaymentStatusUpdateResponse: Codable {
            
            public var aggregatorName: String
            
            public var retry: Bool
            
            public var status: String
            

            public enum CodingKeys: String, CodingKey {
                
                case aggregatorName = "aggregator_name"
                
                case retry = "retry"
                
                case status = "status"
                
            }

            public init(aggregatorName: String, retry: Bool, status: String) {
                
                self.aggregatorName = aggregatorName
                
                self.retry = retry
                
                self.status = status
                
            }

            public func duplicate() -> PaymentStatusUpdateResponse {
                let dict = self.dictionary!
                let copy = PaymentStatusUpdateResponse(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                aggregatorName = try container.decode(String.self, forKey: .aggregatorName)
                
                
                
                
                retry = try container.decode(Bool.self, forKey: .retry)
                
                
                
                
                status = try container.decode(String.self, forKey: .status)
                
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(aggregatorName, forKey: .aggregatorName)
                
                
                
                
                try? container.encodeIfPresent(retry, forKey: .retry)
                
                
                
                
                try? container.encodeIfPresent(status, forKey: .status)
                
                
            }
            
        }
        
        /*
            Model: AggregatorRoute
            Used By: Payment
        */
        class AggregatorRoute: Codable {
            
            public var paymentFlowData: String?
            
            public var data: [String: Any]?
            
            public var paymentFlow: String?
            
            public var apiLink: String?
            

            public enum CodingKeys: String, CodingKey {
                
                case paymentFlowData = "payment_flow_data"
                
                case data = "data"
                
                case paymentFlow = "payment_flow"
                
                case apiLink = "api_link"
                
            }

            public init(apiLink: String?, data: [String: Any]?, paymentFlow: String?, paymentFlowData: String?) {
                
                self.paymentFlowData = paymentFlowData
                
                self.data = data
                
                self.paymentFlow = paymentFlow
                
                self.apiLink = apiLink
                
            }

            public func duplicate() -> AggregatorRoute {
                let dict = self.dictionary!
                let copy = AggregatorRoute(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                do {
                    paymentFlowData = try container.decode(String.self, forKey: .paymentFlowData)
                
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
                
                
                
                do {
                    paymentFlow = try container.decode(String.self, forKey: .paymentFlow)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    apiLink = try container.decode(String.self, forKey: .apiLink)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encode(paymentFlowData, forKey: .paymentFlowData)
                
                
                
                
                try? container.encode(data, forKey: .data)
                
                
                
                
                try? container.encode(paymentFlow, forKey: .paymentFlow)
                
                
                
                
                try? container.encode(apiLink, forKey: .apiLink)
                
                
            }
            
        }
        
        /*
            Model: PaymentFlow
            Used By: Payment
        */
        class PaymentFlow: Codable {
            
            public var mswipe: AggregatorRoute?
            
            public var payubiz: AggregatorRoute?
            
            public var juspay: AggregatorRoute?
            
            public var bqrRazorpay: AggregatorRoute?
            
            public var rupifi: AggregatorRoute?
            
            public var upiRazorpay: AggregatorRoute?
            
            public var razorpay: AggregatorRoute?
            
            public var fynd: AggregatorRoute?
            
            public var ccavenue: AggregatorRoute?
            
            public var simpl: AggregatorRoute?
            
            public var stripe: AggregatorRoute?
            

            public enum CodingKeys: String, CodingKey {
                
                case mswipe = "mswipe"
                
                case payubiz = "payubiz"
                
                case juspay = "juspay"
                
                case bqrRazorpay = "bqr_razorpay"
                
                case rupifi = "rupifi"
                
                case upiRazorpay = "upi_razorpay"
                
                case razorpay = "razorpay"
                
                case fynd = "fynd"
                
                case ccavenue = "ccavenue"
                
                case simpl = "simpl"
                
                case stripe = "stripe"
                
            }

            public init(bqrRazorpay: AggregatorRoute?, ccavenue: AggregatorRoute?, fynd: AggregatorRoute?, juspay: AggregatorRoute?, mswipe: AggregatorRoute?, payubiz: AggregatorRoute?, razorpay: AggregatorRoute?, rupifi: AggregatorRoute?, simpl: AggregatorRoute?, stripe: AggregatorRoute?, upiRazorpay: AggregatorRoute?) {
                
                self.mswipe = mswipe
                
                self.payubiz = payubiz
                
                self.juspay = juspay
                
                self.bqrRazorpay = bqrRazorpay
                
                self.rupifi = rupifi
                
                self.upiRazorpay = upiRazorpay
                
                self.razorpay = razorpay
                
                self.fynd = fynd
                
                self.ccavenue = ccavenue
                
                self.simpl = simpl
                
                self.stripe = stripe
                
            }

            public func duplicate() -> PaymentFlow {
                let dict = self.dictionary!
                let copy = PaymentFlow(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                do {
                    mswipe = try container.decode(AggregatorRoute.self, forKey: .mswipe)
                
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
                    juspay = try container.decode(AggregatorRoute.self, forKey: .juspay)
                
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
                    rupifi = try container.decode(AggregatorRoute.self, forKey: .rupifi)
                
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
                    razorpay = try container.decode(AggregatorRoute.self, forKey: .razorpay)
                
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
                    stripe = try container.decode(AggregatorRoute.self, forKey: .stripe)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encode(mswipe, forKey: .mswipe)
                
                
                
                
                try? container.encode(payubiz, forKey: .payubiz)
                
                
                
                
                try? container.encode(juspay, forKey: .juspay)
                
                
                
                
                try? container.encode(bqrRazorpay, forKey: .bqrRazorpay)
                
                
                
                
                try? container.encode(rupifi, forKey: .rupifi)
                
                
                
                
                try? container.encode(upiRazorpay, forKey: .upiRazorpay)
                
                
                
                
                try? container.encode(razorpay, forKey: .razorpay)
                
                
                
                
                try? container.encode(fynd, forKey: .fynd)
                
                
                
                
                try? container.encode(ccavenue, forKey: .ccavenue)
                
                
                
                
                try? container.encode(simpl, forKey: .simpl)
                
                
                
                
                try? container.encode(stripe, forKey: .stripe)
                
                
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
            Model: IntentApp
            Used By: Payment
        */
        class IntentApp: Codable {
            
            public var displayName: String?
            
            public var logos: PaymentModeLogo?
            
            public var packageName: String?
            
            public var code: String?
            

            public enum CodingKeys: String, CodingKey {
                
                case displayName = "display_name"
                
                case logos = "logos"
                
                case packageName = "package_name"
                
                case code = "code"
                
            }

            public init(code: String?, displayName: String?, logos: PaymentModeLogo?, packageName: String?) {
                
                self.displayName = displayName
                
                self.logos = logos
                
                self.packageName = packageName
                
                self.code = code
                
            }

            public func duplicate() -> IntentApp {
                let dict = self.dictionary!
                let copy = IntentApp(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                do {
                    displayName = try container.decode(String.self, forKey: .displayName)
                
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
                
                
                
                do {
                    packageName = try container.decode(String.self, forKey: .packageName)
                
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
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encode(displayName, forKey: .displayName)
                
                
                
                
                try? container.encode(logos, forKey: .logos)
                
                
                
                
                try? container.encode(packageName, forKey: .packageName)
                
                
                
                
                try? container.encode(code, forKey: .code)
                
                
            }
            
        }
        
        /*
            Model: IntentAppErrorList
            Used By: Payment
        */
        class IntentAppErrorList: Codable {
            
            public var packageName: String?
            
            public var code: String?
            

            public enum CodingKeys: String, CodingKey {
                
                case packageName = "package_name"
                
                case code = "code"
                
            }

            public init(code: String?, packageName: String?) {
                
                self.packageName = packageName
                
                self.code = code
                
            }

            public func duplicate() -> IntentAppErrorList {
                let dict = self.dictionary!
                let copy = IntentAppErrorList(dictionary: dict)!
                return copy
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
                    code = try container.decode(String.self, forKey: .code)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encode(packageName, forKey: .packageName)
                
                
                
                
                try? container.encode(code, forKey: .code)
                
                
            }
            
        }
        
        /*
            Model: PaymentModeList
            Used By: Payment
        */
        class PaymentModeList: Codable {
            
            public var cardReference: String?
            
            public var cardIsin: String?
            
            public var cardToken: String?
            
            public var cardType: String?
            
            public var aggregatorName: String
            
            public var intentFlow: Bool?
            
            public var displayName: String?
            
            public var nickname: String?
            
            public var name: String?
            
            public var cardBrandImage: String?
            
            public var displayPriority: Int?
            
            public var retryCount: Int?
            
            public var intentAppErrorList: [String]?
            
            public var cardBrand: String?
            
            public var intentApp: [IntentApp]?
            
            public var expired: Bool?
            
            public var merchantCode: String?
            
            public var timeout: Int?
            
            public var logoUrl: PaymentModeLogo?
            
            public var cardFingerprint: String?
            
            public var expMonth: Int?
            
            public var cardIssuer: String?
            
            public var cardNumber: String?
            
            public var cardName: String?
            
            public var fyndVpa: String?
            
            public var expYear: Int?
            
            public var code: String?
            
            public var intentAppErrorDictList: [IntentAppErrorList]?
            
            public var cardId: String?
            

            public enum CodingKeys: String, CodingKey {
                
                case cardReference = "card_reference"
                
                case cardIsin = "card_isin"
                
                case cardToken = "card_token"
                
                case cardType = "card_type"
                
                case aggregatorName = "aggregator_name"
                
                case intentFlow = "intent_flow"
                
                case displayName = "display_name"
                
                case nickname = "nickname"
                
                case name = "name"
                
                case cardBrandImage = "card_brand_image"
                
                case displayPriority = "display_priority"
                
                case retryCount = "retry_count"
                
                case intentAppErrorList = "intent_app_error_list"
                
                case cardBrand = "card_brand"
                
                case intentApp = "intent_app"
                
                case expired = "expired"
                
                case merchantCode = "merchant_code"
                
                case timeout = "timeout"
                
                case logoUrl = "logo_url"
                
                case cardFingerprint = "card_fingerprint"
                
                case expMonth = "exp_month"
                
                case cardIssuer = "card_issuer"
                
                case cardNumber = "card_number"
                
                case cardName = "card_name"
                
                case fyndVpa = "fynd_vpa"
                
                case expYear = "exp_year"
                
                case code = "code"
                
                case intentAppErrorDictList = "intent_app_error_dict_list"
                
                case cardId = "card_id"
                
            }

            public init(aggregatorName: String, cardBrand: String?, cardBrandImage: String?, cardFingerprint: String?, cardId: String?, cardIsin: String?, cardIssuer: String?, cardName: String?, cardNumber: String?, cardReference: String?, cardToken: String?, cardType: String?, code: String?, displayName: String?, displayPriority: Int?, expired: Bool?, expMonth: Int?, expYear: Int?, fyndVpa: String?, intentApp: [IntentApp]?, intentAppErrorDictList: [IntentAppErrorList]?, intentAppErrorList: [String]?, intentFlow: Bool?, logoUrl: PaymentModeLogo?, merchantCode: String?, name: String?, nickname: String?, retryCount: Int?, timeout: Int?) {
                
                self.cardReference = cardReference
                
                self.cardIsin = cardIsin
                
                self.cardToken = cardToken
                
                self.cardType = cardType
                
                self.aggregatorName = aggregatorName
                
                self.intentFlow = intentFlow
                
                self.displayName = displayName
                
                self.nickname = nickname
                
                self.name = name
                
                self.cardBrandImage = cardBrandImage
                
                self.displayPriority = displayPriority
                
                self.retryCount = retryCount
                
                self.intentAppErrorList = intentAppErrorList
                
                self.cardBrand = cardBrand
                
                self.intentApp = intentApp
                
                self.expired = expired
                
                self.merchantCode = merchantCode
                
                self.timeout = timeout
                
                self.logoUrl = logoUrl
                
                self.cardFingerprint = cardFingerprint
                
                self.expMonth = expMonth
                
                self.cardIssuer = cardIssuer
                
                self.cardNumber = cardNumber
                
                self.cardName = cardName
                
                self.fyndVpa = fyndVpa
                
                self.expYear = expYear
                
                self.code = code
                
                self.intentAppErrorDictList = intentAppErrorDictList
                
                self.cardId = cardId
                
            }

            public func duplicate() -> PaymentModeList {
                let dict = self.dictionary!
                let copy = PaymentModeList(dictionary: dict)!
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
                    cardIsin = try container.decode(String.self, forKey: .cardIsin)
                
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
                
                
                
                do {
                    cardType = try container.decode(String.self, forKey: .cardType)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                aggregatorName = try container.decode(String.self, forKey: .aggregatorName)
                
                
                
                
                do {
                    intentFlow = try container.decode(Bool.self, forKey: .intentFlow)
                
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
                    nickname = try container.decode(String.self, forKey: .nickname)
                
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
                    cardBrandImage = try container.decode(String.self, forKey: .cardBrandImage)
                
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
                    retryCount = try container.decode(Int.self, forKey: .retryCount)
                
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
                    cardBrand = try container.decode(String.self, forKey: .cardBrand)
                
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
                    expired = try container.decode(Bool.self, forKey: .expired)
                
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
                    timeout = try container.decode(Int.self, forKey: .timeout)
                
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
                    cardFingerprint = try container.decode(String.self, forKey: .cardFingerprint)
                
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
                    cardNumber = try container.decode(String.self, forKey: .cardNumber)
                
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
                    fyndVpa = try container.decode(String.self, forKey: .fyndVpa)
                
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
                    code = try container.decode(String.self, forKey: .code)
                
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
                    cardId = try container.decode(String.self, forKey: .cardId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encode(cardReference, forKey: .cardReference)
                
                
                
                
                try? container.encode(cardIsin, forKey: .cardIsin)
                
                
                
                
                try? container.encode(cardToken, forKey: .cardToken)
                
                
                
                
                try? container.encode(cardType, forKey: .cardType)
                
                
                
                
                try? container.encodeIfPresent(aggregatorName, forKey: .aggregatorName)
                
                
                
                
                try? container.encode(intentFlow, forKey: .intentFlow)
                
                
                
                
                try? container.encode(displayName, forKey: .displayName)
                
                
                
                
                try? container.encode(nickname, forKey: .nickname)
                
                
                
                
                try? container.encode(name, forKey: .name)
                
                
                
                
                try? container.encode(cardBrandImage, forKey: .cardBrandImage)
                
                
                
                
                try? container.encode(displayPriority, forKey: .displayPriority)
                
                
                
                
                try? container.encode(retryCount, forKey: .retryCount)
                
                
                
                
                try? container.encode(intentAppErrorList, forKey: .intentAppErrorList)
                
                
                
                
                try? container.encode(cardBrand, forKey: .cardBrand)
                
                
                
                
                try? container.encode(intentApp, forKey: .intentApp)
                
                
                
                
                try? container.encode(expired, forKey: .expired)
                
                
                
                
                try? container.encode(merchantCode, forKey: .merchantCode)
                
                
                
                
                try? container.encode(timeout, forKey: .timeout)
                
                
                
                
                try? container.encode(logoUrl, forKey: .logoUrl)
                
                
                
                
                try? container.encode(cardFingerprint, forKey: .cardFingerprint)
                
                
                
                
                try? container.encode(expMonth, forKey: .expMonth)
                
                
                
                
                try? container.encode(cardIssuer, forKey: .cardIssuer)
                
                
                
                
                try? container.encode(cardNumber, forKey: .cardNumber)
                
                
                
                
                try? container.encode(cardName, forKey: .cardName)
                
                
                
                
                try? container.encode(fyndVpa, forKey: .fyndVpa)
                
                
                
                
                try? container.encode(expYear, forKey: .expYear)
                
                
                
                
                try? container.encode(code, forKey: .code)
                
                
                
                
                try? container.encode(intentAppErrorDictList, forKey: .intentAppErrorDictList)
                
                
                
                
                try? container.encode(cardId, forKey: .cardId)
                
                
            }
            
        }
        
        /*
            Model: RootPaymentMode
            Used By: Payment
        */
        class RootPaymentMode: Codable {
            
            public var addCardEnabled: Bool?
            
            public var name: String
            
            public var anonymousEnable: Bool?
            
            public var displayPriority: Int
            
            public var list: [PaymentModeList]?
            
            public var aggregatorName: String?
            
            public var displayName: String
            

            public enum CodingKeys: String, CodingKey {
                
                case addCardEnabled = "add_card_enabled"
                
                case name = "name"
                
                case anonymousEnable = "anonymous_enable"
                
                case displayPriority = "display_priority"
                
                case list = "list"
                
                case aggregatorName = "aggregator_name"
                
                case displayName = "display_name"
                
            }

            public init(addCardEnabled: Bool?, aggregatorName: String?, anonymousEnable: Bool?, displayName: String, displayPriority: Int, list: [PaymentModeList]?, name: String) {
                
                self.addCardEnabled = addCardEnabled
                
                self.name = name
                
                self.anonymousEnable = anonymousEnable
                
                self.displayPriority = displayPriority
                
                self.list = list
                
                self.aggregatorName = aggregatorName
                
                self.displayName = displayName
                
            }

            public func duplicate() -> RootPaymentMode {
                let dict = self.dictionary!
                let copy = RootPaymentMode(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                do {
                    addCardEnabled = try container.decode(Bool.self, forKey: .addCardEnabled)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                name = try container.decode(String.self, forKey: .name)
                
                
                
                
                do {
                    anonymousEnable = try container.decode(Bool.self, forKey: .anonymousEnable)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                displayPriority = try container.decode(Int.self, forKey: .displayPriority)
                
                
                
                
                do {
                    list = try container.decode([PaymentModeList].self, forKey: .list)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    aggregatorName = try container.decode(String.self, forKey: .aggregatorName)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                displayName = try container.decode(String.self, forKey: .displayName)
                
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encode(addCardEnabled, forKey: .addCardEnabled)
                
                
                
                
                try? container.encodeIfPresent(name, forKey: .name)
                
                
                
                
                try? container.encode(anonymousEnable, forKey: .anonymousEnable)
                
                
                
                
                try? container.encodeIfPresent(displayPriority, forKey: .displayPriority)
                
                
                
                
                try? container.encodeIfPresent(list, forKey: .list)
                
                
                
                
                try? container.encode(aggregatorName, forKey: .aggregatorName)
                
                
                
                
                try? container.encodeIfPresent(displayName, forKey: .displayName)
                
                
            }
            
        }
        
        /*
            Model: PaymentOptionAndFlow
            Used By: Payment
        */
        class PaymentOptionAndFlow: Codable {
            
            public var paymentFlows: PaymentFlow
            
            public var paymentOption: [RootPaymentMode]
            

            public enum CodingKeys: String, CodingKey {
                
                case paymentFlows = "payment_flows"
                
                case paymentOption = "payment_option"
                
            }

            public init(paymentFlows: PaymentFlow, paymentOption: [RootPaymentMode]) {
                
                self.paymentFlows = paymentFlows
                
                self.paymentOption = paymentOption
                
            }

            public func duplicate() -> PaymentOptionAndFlow {
                let dict = self.dictionary!
                let copy = PaymentOptionAndFlow(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                paymentFlows = try container.decode(PaymentFlow.self, forKey: .paymentFlows)
                
                
                
                
                paymentOption = try container.decode([RootPaymentMode].self, forKey: .paymentOption)
                
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(paymentFlows, forKey: .paymentFlows)
                
                
                
                
                try? container.encodeIfPresent(paymentOption, forKey: .paymentOption)
                
                
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

            public init(kycUrl: String?, status: String?) {
                
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
            Model: TransferItemsDetails
            Used By: Payment
        */
        class TransferItemsDetails: Codable {
            
            public var logoSmall: String
            
            public var name: String
            
            public var logoLarge: String
            
            public var id: Int
            
            public var displayName: String?
            

            public enum CodingKeys: String, CodingKey {
                
                case logoSmall = "logo_small"
                
                case name = "name"
                
                case logoLarge = "logo_large"
                
                case id = "id"
                
                case displayName = "display_name"
                
            }

            public init(displayName: String?, id: Int, logoLarge: String, logoSmall: String, name: String) {
                
                self.logoSmall = logoSmall
                
                self.name = name
                
                self.logoLarge = logoLarge
                
                self.id = id
                
                self.displayName = displayName
                
            }

            public func duplicate() -> TransferItemsDetails {
                let dict = self.dictionary!
                let copy = TransferItemsDetails(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                logoSmall = try container.decode(String.self, forKey: .logoSmall)
                
                
                
                
                name = try container.decode(String.self, forKey: .name)
                
                
                
                
                logoLarge = try container.decode(String.self, forKey: .logoLarge)
                
                
                
                
                id = try container.decode(Int.self, forKey: .id)
                
                
                
                
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
                
                
                
                try? container.encodeIfPresent(logoSmall, forKey: .logoSmall)
                
                
                
                
                try? container.encodeIfPresent(name, forKey: .name)
                
                
                
                
                try? container.encodeIfPresent(logoLarge, forKey: .logoLarge)
                
                
                
                
                try? container.encodeIfPresent(id, forKey: .id)
                
                
                
                
                try? container.encodeIfPresent(displayName, forKey: .displayName)
                
                
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

            public init(displayName: String, items: [TransferItemsDetails]?) {
                
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
            
            public var enable: Bool
            
            public var transferMode: String
            

            public enum CodingKeys: String, CodingKey {
                
                case enable = "enable"
                
                case transferMode = "transfer_mode"
                
            }

            public init(enable: Bool, transferMode: String) {
                
                self.enable = enable
                
                self.transferMode = transferMode
                
            }

            public func duplicate() -> UpdateRefundTransferModeRequest {
                let dict = self.dictionary!
                let copy = UpdateRefundTransferModeRequest(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                enable = try container.decode(Bool.self, forKey: .enable)
                
                
                
                
                transferMode = try container.decode(String.self, forKey: .transferMode)
                
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(enable, forKey: .enable)
                
                
                
                
                try? container.encodeIfPresent(transferMode, forKey: .transferMode)
                
                
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

            public init(success: Bool?) {
                
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
            
            public var modifiedOn: String
            
            public var createdOn: String
            
            public var branchName: Bool?
            
            public var subtitle: String
            
            public var id: Int
            
            public var displayName: String
            
            public var email: String
            
            public var isActive: Bool
            
            public var beneficiaryId: String
            
            public var transferMode: String
            
            public var address: String
            
            public var ifscCode: String
            
            public var comment: Bool?
            
            public var delightsUserName: String?
            
            public var accountHolder: String
            
            public var mobile: Bool?
            
            public var accountNo: String
            
            public var title: String
            
            public var bankName: String
            

            public enum CodingKeys: String, CodingKey {
                
                case modifiedOn = "modified_on"
                
                case createdOn = "created_on"
                
                case branchName = "branch_name"
                
                case subtitle = "subtitle"
                
                case id = "id"
                
                case displayName = "display_name"
                
                case email = "email"
                
                case isActive = "is_active"
                
                case beneficiaryId = "beneficiary_id"
                
                case transferMode = "transfer_mode"
                
                case address = "address"
                
                case ifscCode = "ifsc_code"
                
                case comment = "comment"
                
                case delightsUserName = "delights_user_name"
                
                case accountHolder = "account_holder"
                
                case mobile = "mobile"
                
                case accountNo = "account_no"
                
                case title = "title"
                
                case bankName = "bank_name"
                
            }

            public init(accountHolder: String, accountNo: String, address: String, bankName: String, beneficiaryId: String, branchName: Bool?, comment: Bool?, createdOn: String, delightsUserName: String?, displayName: String, email: String, id: Int, ifscCode: String, isActive: Bool, mobile: Bool?, modifiedOn: String, subtitle: String, title: String, transferMode: String) {
                
                self.modifiedOn = modifiedOn
                
                self.createdOn = createdOn
                
                self.branchName = branchName
                
                self.subtitle = subtitle
                
                self.id = id
                
                self.displayName = displayName
                
                self.email = email
                
                self.isActive = isActive
                
                self.beneficiaryId = beneficiaryId
                
                self.transferMode = transferMode
                
                self.address = address
                
                self.ifscCode = ifscCode
                
                self.comment = comment
                
                self.delightsUserName = delightsUserName
                
                self.accountHolder = accountHolder
                
                self.mobile = mobile
                
                self.accountNo = accountNo
                
                self.title = title
                
                self.bankName = bankName
                
            }

            public func duplicate() -> OrderBeneficiaryDetails {
                let dict = self.dictionary!
                let copy = OrderBeneficiaryDetails(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                modifiedOn = try container.decode(String.self, forKey: .modifiedOn)
                
                
                
                
                createdOn = try container.decode(String.self, forKey: .createdOn)
                
                
                
                
                do {
                    branchName = try container.decode(Bool.self, forKey: .branchName)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                subtitle = try container.decode(String.self, forKey: .subtitle)
                
                
                
                
                id = try container.decode(Int.self, forKey: .id)
                
                
                
                
                displayName = try container.decode(String.self, forKey: .displayName)
                
                
                
                
                email = try container.decode(String.self, forKey: .email)
                
                
                
                
                isActive = try container.decode(Bool.self, forKey: .isActive)
                
                
                
                
                beneficiaryId = try container.decode(String.self, forKey: .beneficiaryId)
                
                
                
                
                transferMode = try container.decode(String.self, forKey: .transferMode)
                
                
                
                
                address = try container.decode(String.self, forKey: .address)
                
                
                
                
                ifscCode = try container.decode(String.self, forKey: .ifscCode)
                
                
                
                
                do {
                    comment = try container.decode(Bool.self, forKey: .comment)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    delightsUserName = try container.decode(String.self, forKey: .delightsUserName)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                accountHolder = try container.decode(String.self, forKey: .accountHolder)
                
                
                
                
                do {
                    mobile = try container.decode(Bool.self, forKey: .mobile)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                accountNo = try container.decode(String.self, forKey: .accountNo)
                
                
                
                
                title = try container.decode(String.self, forKey: .title)
                
                
                
                
                bankName = try container.decode(String.self, forKey: .bankName)
                
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)
                
                
                
                
                try? container.encodeIfPresent(createdOn, forKey: .createdOn)
                
                
                
                
                try? container.encodeIfPresent(branchName, forKey: .branchName)
                
                
                
                
                try? container.encodeIfPresent(subtitle, forKey: .subtitle)
                
                
                
                
                try? container.encodeIfPresent(id, forKey: .id)
                
                
                
                
                try? container.encodeIfPresent(displayName, forKey: .displayName)
                
                
                
                
                try? container.encodeIfPresent(email, forKey: .email)
                
                
                
                
                try? container.encodeIfPresent(isActive, forKey: .isActive)
                
                
                
                
                try? container.encodeIfPresent(beneficiaryId, forKey: .beneficiaryId)
                
                
                
                
                try? container.encodeIfPresent(transferMode, forKey: .transferMode)
                
                
                
                
                try? container.encodeIfPresent(address, forKey: .address)
                
                
                
                
                try? container.encodeIfPresent(ifscCode, forKey: .ifscCode)
                
                
                
                
                try? container.encodeIfPresent(comment, forKey: .comment)
                
                
                
                
                try? container.encode(delightsUserName, forKey: .delightsUserName)
                
                
                
                
                try? container.encodeIfPresent(accountHolder, forKey: .accountHolder)
                
                
                
                
                try? container.encodeIfPresent(mobile, forKey: .mobile)
                
                
                
                
                try? container.encodeIfPresent(accountNo, forKey: .accountNo)
                
                
                
                
                try? container.encodeIfPresent(title, forKey: .title)
                
                
                
                
                try? container.encodeIfPresent(bankName, forKey: .bankName)
                
                
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

            public init(beneficiaries: [OrderBeneficiaryDetails]?, showBeneficiaryDetails: Bool?) {
                
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
            
            public var description: String
            
            public var success: Bool
            
            public var code: String
            

            public enum CodingKeys: String, CodingKey {
                
                case description = "description"
                
                case success = "success"
                
                case code = "code"
                
            }

            public init(code: String, description: String, success: Bool) {
                
                self.description = description
                
                self.success = success
                
                self.code = code
                
            }

            public func duplicate() -> NotFoundResourceError {
                let dict = self.dictionary!
                let copy = NotFoundResourceError(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                description = try container.decode(String.self, forKey: .description)
                
                
                
                
                success = try container.decode(Bool.self, forKey: .success)
                
                
                
                
                code = try container.decode(String.self, forKey: .code)
                
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(description, forKey: .description)
                
                
                
                
                try? container.encodeIfPresent(success, forKey: .success)
                
                
                
                
                try? container.encodeIfPresent(code, forKey: .code)
                
                
            }
            
        }
        
        /*
            Model: IfscCodeResponse
            Used By: Payment
        */
        class IfscCodeResponse: Codable {
            
            public var branchName: String
            
            public var success: Bool?
            
            public var bankName: String
            

            public enum CodingKeys: String, CodingKey {
                
                case branchName = "branch_name"
                
                case success = "success"
                
                case bankName = "bank_name"
                
            }

            public init(bankName: String, branchName: String, success: Bool?) {
                
                self.branchName = branchName
                
                self.success = success
                
                self.bankName = bankName
                
            }

            public func duplicate() -> IfscCodeResponse {
                let dict = self.dictionary!
                let copy = IfscCodeResponse(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                branchName = try container.decode(String.self, forKey: .branchName)
                
                
                
                
                do {
                    success = try container.decode(Bool.self, forKey: .success)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                bankName = try container.decode(String.self, forKey: .bankName)
                
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(branchName, forKey: .branchName)
                
                
                
                
                try? container.encodeIfPresent(success, forKey: .success)
                
                
                
                
                try? container.encodeIfPresent(bankName, forKey: .bankName)
                
                
            }
            
        }
        
        /*
            Model: ErrorCodeDescription
            Used By: Payment
        */
        class ErrorCodeDescription: Codable {
            
            public var description: String
            
            public var success: Bool
            
            public var code: String
            

            public enum CodingKeys: String, CodingKey {
                
                case description = "description"
                
                case success = "success"
                
                case code = "code"
                
            }

            public init(code: String, description: String, success: Bool) {
                
                self.description = description
                
                self.success = success
                
                self.code = code
                
            }

            public func duplicate() -> ErrorCodeDescription {
                let dict = self.dictionary!
                let copy = ErrorCodeDescription(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                description = try container.decode(String.self, forKey: .description)
                
                
                
                
                success = try container.decode(Bool.self, forKey: .success)
                
                
                
                
                code = try container.decode(String.self, forKey: .code)
                
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(description, forKey: .description)
                
                
                
                
                try? container.encodeIfPresent(success, forKey: .success)
                
                
                
                
                try? container.encodeIfPresent(code, forKey: .code)
                
                
            }
            
        }
        
        /*
            Model: AddBeneficiaryViaOtpVerificationRequest
            Used By: Payment
        */
        class AddBeneficiaryViaOtpVerificationRequest: Codable {
            
            public var hashKey: String
            
            public var otp: String
            
            public var requestId: String
            

            public enum CodingKeys: String, CodingKey {
                
                case hashKey = "hash_key"
                
                case otp = "otp"
                
                case requestId = "request_id"
                
            }

            public init(hashKey: String, otp: String, requestId: String) {
                
                self.hashKey = hashKey
                
                self.otp = otp
                
                self.requestId = requestId
                
            }

            public func duplicate() -> AddBeneficiaryViaOtpVerificationRequest {
                let dict = self.dictionary!
                let copy = AddBeneficiaryViaOtpVerificationRequest(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                hashKey = try container.decode(String.self, forKey: .hashKey)
                
                
                
                
                otp = try container.decode(String.self, forKey: .otp)
                
                
                
                
                requestId = try container.decode(String.self, forKey: .requestId)
                
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(hashKey, forKey: .hashKey)
                
                
                
                
                try? container.encodeIfPresent(otp, forKey: .otp)
                
                
                
                
                try? container.encodeIfPresent(requestId, forKey: .requestId)
                
                
            }
            
        }
        
        /*
            Model: AddBeneficiaryViaOtpVerificationResponse
            Used By: Payment
        */
        class AddBeneficiaryViaOtpVerificationResponse: Codable {
            
            public var message: String
            
            public var success: Bool?
            

            public enum CodingKeys: String, CodingKey {
                
                case message = "message"
                
                case success = "success"
                
            }

            public init(message: String, success: Bool?) {
                
                self.message = message
                
                self.success = success
                
            }

            public func duplicate() -> AddBeneficiaryViaOtpVerificationResponse {
                let dict = self.dictionary!
                let copy = AddBeneficiaryViaOtpVerificationResponse(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                message = try container.decode(String.self, forKey: .message)
                
                
                
                
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
                
                
                
                try? container.encodeIfPresent(message, forKey: .message)
                
                
                
                
                try? container.encodeIfPresent(success, forKey: .success)
                
                
            }
            
        }
        
        /*
            Model: WrongOtpError
            Used By: Payment
        */
        class WrongOtpError: Codable {
            
            public var description: String
            
            public var success: String
            
            public var isVerifiedFlag: Bool
            

            public enum CodingKeys: String, CodingKey {
                
                case description = "description"
                
                case success = "success"
                
                case isVerifiedFlag = "is_verified_flag"
                
            }

            public init(description: String, isVerifiedFlag: Bool, success: String) {
                
                self.description = description
                
                self.success = success
                
                self.isVerifiedFlag = isVerifiedFlag
                
            }

            public func duplicate() -> WrongOtpError {
                let dict = self.dictionary!
                let copy = WrongOtpError(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                description = try container.decode(String.self, forKey: .description)
                
                
                
                
                success = try container.decode(String.self, forKey: .success)
                
                
                
                
                isVerifiedFlag = try container.decode(Bool.self, forKey: .isVerifiedFlag)
                
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(description, forKey: .description)
                
                
                
                
                try? container.encodeIfPresent(success, forKey: .success)
                
                
                
                
                try? container.encodeIfPresent(isVerifiedFlag, forKey: .isVerifiedFlag)
                
                
            }
            
        }
        
        /*
            Model: BeneficiaryModeDetails
            Used By: Payment
        */
        class BeneficiaryModeDetails: Codable {
            
            public var comment: String?
            
            public var ifscCode: String
            
            public var mobile: String
            
            public var accountNo: String
            
            public var vpa: String?
            
            public var branchName: String
            
            public var bankName: String
            
            public var wallet: String?
            
            public var address: String?
            
            public var accountHolder: String
            
            public var email: String
            

            public enum CodingKeys: String, CodingKey {
                
                case comment = "comment"
                
                case ifscCode = "ifsc_code"
                
                case mobile = "mobile"
                
                case accountNo = "account_no"
                
                case vpa = "vpa"
                
                case branchName = "branch_name"
                
                case bankName = "bank_name"
                
                case wallet = "wallet"
                
                case address = "address"
                
                case accountHolder = "account_holder"
                
                case email = "email"
                
            }

            public init(accountHolder: String, accountNo: String, address: String?, bankName: String, branchName: String, comment: String?, email: String, ifscCode: String, mobile: String, vpa: String?, wallet: String?) {
                
                self.comment = comment
                
                self.ifscCode = ifscCode
                
                self.mobile = mobile
                
                self.accountNo = accountNo
                
                self.vpa = vpa
                
                self.branchName = branchName
                
                self.bankName = bankName
                
                self.wallet = wallet
                
                self.address = address
                
                self.accountHolder = accountHolder
                
                self.email = email
                
            }

            public func duplicate() -> BeneficiaryModeDetails {
                let dict = self.dictionary!
                let copy = BeneficiaryModeDetails(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                do {
                    comment = try container.decode(String.self, forKey: .comment)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                ifscCode = try container.decode(String.self, forKey: .ifscCode)
                
                
                
                
                mobile = try container.decode(String.self, forKey: .mobile)
                
                
                
                
                accountNo = try container.decode(String.self, forKey: .accountNo)
                
                
                
                
                do {
                    vpa = try container.decode(String.self, forKey: .vpa)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                branchName = try container.decode(String.self, forKey: .branchName)
                
                
                
                
                bankName = try container.decode(String.self, forKey: .bankName)
                
                
                
                
                do {
                    wallet = try container.decode(String.self, forKey: .wallet)
                
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
                
                
                
                
                email = try container.decode(String.self, forKey: .email)
                
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(comment, forKey: .comment)
                
                
                
                
                try? container.encodeIfPresent(ifscCode, forKey: .ifscCode)
                
                
                
                
                try? container.encodeIfPresent(mobile, forKey: .mobile)
                
                
                
                
                try? container.encodeIfPresent(accountNo, forKey: .accountNo)
                
                
                
                
                try? container.encode(vpa, forKey: .vpa)
                
                
                
                
                try? container.encodeIfPresent(branchName, forKey: .branchName)
                
                
                
                
                try? container.encodeIfPresent(bankName, forKey: .bankName)
                
                
                
                
                try? container.encode(wallet, forKey: .wallet)
                
                
                
                
                try? container.encodeIfPresent(address, forKey: .address)
                
                
                
                
                try? container.encodeIfPresent(accountHolder, forKey: .accountHolder)
                
                
                
                
                try? container.encodeIfPresent(email, forKey: .email)
                
                
            }
            
        }
        
        /*
            Model: AddBeneficiaryDetailsRequest
            Used By: Payment
        */
        class AddBeneficiaryDetailsRequest: Codable {
            
            public var otp: String?
            
            public var delights: Bool
            
            public var shipmentId: String
            
            public var details: BeneficiaryModeDetails
            
            public var requestId: String?
            
            public var transferMode: String
            
            public var orderId: String
            

            public enum CodingKeys: String, CodingKey {
                
                case otp = "otp"
                
                case delights = "delights"
                
                case shipmentId = "shipment_id"
                
                case details = "details"
                
                case requestId = "request_id"
                
                case transferMode = "transfer_mode"
                
                case orderId = "order_id"
                
            }

            public init(delights: Bool, details: BeneficiaryModeDetails, orderId: String, otp: String?, requestId: String?, shipmentId: String, transferMode: String) {
                
                self.otp = otp
                
                self.delights = delights
                
                self.shipmentId = shipmentId
                
                self.details = details
                
                self.requestId = requestId
                
                self.transferMode = transferMode
                
                self.orderId = orderId
                
            }

            public func duplicate() -> AddBeneficiaryDetailsRequest {
                let dict = self.dictionary!
                let copy = AddBeneficiaryDetailsRequest(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                do {
                    otp = try container.decode(String.self, forKey: .otp)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                delights = try container.decode(Bool.self, forKey: .delights)
                
                
                
                
                shipmentId = try container.decode(String.self, forKey: .shipmentId)
                
                
                
                
                details = try container.decode(BeneficiaryModeDetails.self, forKey: .details)
                
                
                
                
                do {
                    requestId = try container.decode(String.self, forKey: .requestId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                transferMode = try container.decode(String.self, forKey: .transferMode)
                
                
                
                
                orderId = try container.decode(String.self, forKey: .orderId)
                
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(otp, forKey: .otp)
                
                
                
                
                try? container.encodeIfPresent(delights, forKey: .delights)
                
                
                
                
                try? container.encodeIfPresent(shipmentId, forKey: .shipmentId)
                
                
                
                
                try? container.encodeIfPresent(details, forKey: .details)
                
                
                
                
                try? container.encodeIfPresent(requestId, forKey: .requestId)
                
                
                
                
                try? container.encodeIfPresent(transferMode, forKey: .transferMode)
                
                
                
                
                try? container.encodeIfPresent(orderId, forKey: .orderId)
                
                
            }
            
        }
        
        /*
            Model: RefundAccountResponse
            Used By: Payment
        */
        class RefundAccountResponse: Codable {
            
            public var message: String
            
            public var success: Bool
            
            public var data: [String: Any]?
            
            public var isVerifiedFlag: Bool?
            

            public enum CodingKeys: String, CodingKey {
                
                case message = "message"
                
                case success = "success"
                
                case data = "data"
                
                case isVerifiedFlag = "is_verified_flag"
                
            }

            public init(data: [String: Any]?, isVerifiedFlag: Bool?, message: String, success: Bool) {
                
                self.message = message
                
                self.success = success
                
                self.data = data
                
                self.isVerifiedFlag = isVerifiedFlag
                
            }

            public func duplicate() -> RefundAccountResponse {
                let dict = self.dictionary!
                let copy = RefundAccountResponse(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                message = try container.decode(String.self, forKey: .message)
                
                
                
                
                success = try container.decode(Bool.self, forKey: .success)
                
                
                
                
                do {
                    data = try container.decode([String: Any].self, forKey: .data)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    isVerifiedFlag = try container.decode(Bool.self, forKey: .isVerifiedFlag)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(message, forKey: .message)
                
                
                
                
                try? container.encodeIfPresent(success, forKey: .success)
                
                
                
                
                try? container.encodeIfPresent(data, forKey: .data)
                
                
                
                
                try? container.encodeIfPresent(isVerifiedFlag, forKey: .isVerifiedFlag)
                
                
            }
            
        }
        
        /*
            Model: BankDetailsForOTP
            Used By: Payment
        */
        class BankDetailsForOTP: Codable {
            
            public var ifscCode: String
            
            public var accountNo: String
            
            public var branchName: String
            
            public var bankName: String
            
            public var accountHolder: String
            

            public enum CodingKeys: String, CodingKey {
                
                case ifscCode = "ifsc_code"
                
                case accountNo = "account_no"
                
                case branchName = "branch_name"
                
                case bankName = "bank_name"
                
                case accountHolder = "account_holder"
                
            }

            public init(accountHolder: String, accountNo: String, bankName: String, branchName: String, ifscCode: String) {
                
                self.ifscCode = ifscCode
                
                self.accountNo = accountNo
                
                self.branchName = branchName
                
                self.bankName = bankName
                
                self.accountHolder = accountHolder
                
            }

            public func duplicate() -> BankDetailsForOTP {
                let dict = self.dictionary!
                let copy = BankDetailsForOTP(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                ifscCode = try container.decode(String.self, forKey: .ifscCode)
                
                
                
                
                accountNo = try container.decode(String.self, forKey: .accountNo)
                
                
                
                
                branchName = try container.decode(String.self, forKey: .branchName)
                
                
                
                
                bankName = try container.decode(String.self, forKey: .bankName)
                
                
                
                
                accountHolder = try container.decode(String.self, forKey: .accountHolder)
                
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(ifscCode, forKey: .ifscCode)
                
                
                
                
                try? container.encodeIfPresent(accountNo, forKey: .accountNo)
                
                
                
                
                try? container.encodeIfPresent(branchName, forKey: .branchName)
                
                
                
                
                try? container.encodeIfPresent(bankName, forKey: .bankName)
                
                
                
                
                try? container.encodeIfPresent(accountHolder, forKey: .accountHolder)
                
                
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
            
            public var mobile: String
            
            public var countryCode: String
            

            public enum CodingKeys: String, CodingKey {
                
                case mobile = "mobile"
                
                case countryCode = "country_code"
                
            }

            public init(countryCode: String, mobile: String) {
                
                self.mobile = mobile
                
                self.countryCode = countryCode
                
            }

            public func duplicate() -> WalletOtpRequest {
                let dict = self.dictionary!
                let copy = WalletOtpRequest(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                mobile = try container.decode(String.self, forKey: .mobile)
                
                
                
                
                countryCode = try container.decode(String.self, forKey: .countryCode)
                
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(mobile, forKey: .mobile)
                
                
                
                
                try? container.encodeIfPresent(countryCode, forKey: .countryCode)
                
                
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

            public init(isVerifiedFlag: String, requestId: String, success: Bool?) {
                
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
            
            public var beneficiaryId: String
            
            public var orderId: String
            

            public enum CodingKeys: String, CodingKey {
                
                case beneficiaryId = "beneficiary_id"
                
                case orderId = "order_id"
                
            }

            public init(beneficiaryId: String, orderId: String) {
                
                self.beneficiaryId = beneficiaryId
                
                self.orderId = orderId
                
            }

            public func duplicate() -> SetDefaultBeneficiaryRequest {
                let dict = self.dictionary!
                let copy = SetDefaultBeneficiaryRequest(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                beneficiaryId = try container.decode(String.self, forKey: .beneficiaryId)
                
                
                
                
                orderId = try container.decode(String.self, forKey: .orderId)
                
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(beneficiaryId, forKey: .beneficiaryId)
                
                
                
                
                try? container.encodeIfPresent(orderId, forKey: .orderId)
                
                
            }
            
        }
        
        /*
            Model: SetDefaultBeneficiaryResponse
            Used By: Payment
        */
        class SetDefaultBeneficiaryResponse: Codable {
            
            public var isBeneficiarySet: Bool
            
            public var success: Bool?
            

            public enum CodingKeys: String, CodingKey {
                
                case isBeneficiarySet = "is_beneficiary_set"
                
                case success = "success"
                
            }

            public init(isBeneficiarySet: Bool, success: Bool?) {
                
                self.isBeneficiarySet = isBeneficiarySet
                
                self.success = success
                
            }

            public func duplicate() -> SetDefaultBeneficiaryResponse {
                let dict = self.dictionary!
                let copy = SetDefaultBeneficiaryResponse(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                isBeneficiarySet = try container.decode(Bool.self, forKey: .isBeneficiarySet)
                
                
                
                
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
                
                
                
                try? container.encodeIfPresent(isBeneficiarySet, forKey: .isBeneficiarySet)
                
                
                
                
                try? container.encodeIfPresent(success, forKey: .success)
                
                
            }
            
        }
        
}
