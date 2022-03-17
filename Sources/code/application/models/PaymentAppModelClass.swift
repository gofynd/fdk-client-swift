import Foundation


import Foundation
public extension ApplicationClient {
  
        /*
            Model: AggregatorConfigDetail
            Used By: Payment
        */
        class AggregatorConfigDetail: Codable {
            
            public var configType: String
            
            public var key: String
            
            public var secret: String
            
            public var userId: String?
            
            public var merchantId: String?
            
            public var verifyApi: String?
            
            public var merchantKey: String?
            
            public var pin: String?
            
            public var api: String?
            
            public var sdk: Bool?
            

            public enum CodingKeys: String, CodingKey {
                
                case configType = "config_type"
                
                case key = "key"
                
                case secret = "secret"
                
                case userId = "user_id"
                
                case merchantId = "merchant_id"
                
                case verifyApi = "verify_api"
                
                case merchantKey = "merchant_key"
                
                case pin = "pin"
                
                case api = "api"
                
                case sdk = "sdk"
                
            }

            public init(api: String?, configType: String, key: String, merchantId: String?, merchantKey: String?, pin: String?, sdk: Bool?, secret: String, userId: String?, verifyApi: String?) {
                
                self.configType = configType
                
                self.key = key
                
                self.secret = secret
                
                self.userId = userId
                
                self.merchantId = merchantId
                
                self.verifyApi = verifyApi
                
                self.merchantKey = merchantKey
                
                self.pin = pin
                
                self.api = api
                
                self.sdk = sdk
                
            }

            public func duplicate() -> AggregatorConfigDetail {
                let dict = self.dictionary!
                let copy = AggregatorConfigDetail(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                configType = try container.decode(String.self, forKey: .configType)
                
                
                
                
                key = try container.decode(String.self, forKey: .key)
                
                
                
                
                secret = try container.decode(String.self, forKey: .secret)
                
                
                
                
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
                
                
                
                do {
                    verifyApi = try container.decode(String.self, forKey: .verifyApi)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    merchantKey = try container.decode(String.self, forKey: .merchantKey)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
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
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(configType, forKey: .configType)
                
                
                
                
                try? container.encodeIfPresent(key, forKey: .key)
                
                
                
                
                try? container.encodeIfPresent(secret, forKey: .secret)
                
                
                
                
                try? container.encode(userId, forKey: .userId)
                
                
                
                
                try? container.encode(merchantId, forKey: .merchantId)
                
                
                
                
                try? container.encode(verifyApi, forKey: .verifyApi)
                
                
                
                
                try? container.encode(merchantKey, forKey: .merchantKey)
                
                
                
                
                try? container.encode(pin, forKey: .pin)
                
                
                
                
                try? container.encode(api, forKey: .api)
                
                
                
                
                try? container.encode(sdk, forKey: .sdk)
                
                
            }
            
        }
        
        /*
            Model: AggregatorsConfigDetailResponse
            Used By: Payment
        */
        class AggregatorsConfigDetailResponse: Codable {
            
            public var ccavenue: AggregatorConfigDetail?
            
            public var simpl: AggregatorConfigDetail?
            
            public var rupifi: AggregatorConfigDetail?
            
            public var payumoney: AggregatorConfigDetail?
            
            public var mswipe: AggregatorConfigDetail?
            
            public var juspay: AggregatorConfigDetail?
            
            public var stripe: AggregatorConfigDetail?
            
            public var razorpay: AggregatorConfigDetail?
            
            public var success: Bool
            
            public var env: String
            

            public enum CodingKeys: String, CodingKey {
                
                case ccavenue = "ccavenue"
                
                case simpl = "simpl"
                
                case rupifi = "rupifi"
                
                case payumoney = "payumoney"
                
                case mswipe = "mswipe"
                
                case juspay = "juspay"
                
                case stripe = "stripe"
                
                case razorpay = "razorpay"
                
                case success = "success"
                
                case env = "env"
                
            }

            public init(ccavenue: AggregatorConfigDetail?, env: String, juspay: AggregatorConfigDetail?, mswipe: AggregatorConfigDetail?, payumoney: AggregatorConfigDetail?, razorpay: AggregatorConfigDetail?, rupifi: AggregatorConfigDetail?, simpl: AggregatorConfigDetail?, stripe: AggregatorConfigDetail?, success: Bool) {
                
                self.ccavenue = ccavenue
                
                self.simpl = simpl
                
                self.rupifi = rupifi
                
                self.payumoney = payumoney
                
                self.mswipe = mswipe
                
                self.juspay = juspay
                
                self.stripe = stripe
                
                self.razorpay = razorpay
                
                self.success = success
                
                self.env = env
                
            }

            public func duplicate() -> AggregatorsConfigDetailResponse {
                let dict = self.dictionary!
                let copy = AggregatorsConfigDetailResponse(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                do {
                    ccavenue = try container.decode(AggregatorConfigDetail.self, forKey: .ccavenue)
                
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
                    rupifi = try container.decode(AggregatorConfigDetail.self, forKey: .rupifi)
                
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
                    mswipe = try container.decode(AggregatorConfigDetail.self, forKey: .mswipe)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
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
                    razorpay = try container.decode(AggregatorConfigDetail.self, forKey: .razorpay)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                success = try container.decode(Bool.self, forKey: .success)
                
                
                
                
                env = try container.decode(String.self, forKey: .env)
                
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(ccavenue, forKey: .ccavenue)
                
                
                
                
                try? container.encodeIfPresent(simpl, forKey: .simpl)
                
                
                
                
                try? container.encodeIfPresent(rupifi, forKey: .rupifi)
                
                
                
                
                try? container.encodeIfPresent(payumoney, forKey: .payumoney)
                
                
                
                
                try? container.encodeIfPresent(mswipe, forKey: .mswipe)
                
                
                
                
                try? container.encodeIfPresent(juspay, forKey: .juspay)
                
                
                
                
                try? container.encodeIfPresent(stripe, forKey: .stripe)
                
                
                
                
                try? container.encodeIfPresent(razorpay, forKey: .razorpay)
                
                
                
                
                try? container.encodeIfPresent(success, forKey: .success)
                
                
                
                
                try? container.encodeIfPresent(env, forKey: .env)
                
                
            }
            
        }
        
        /*
            Model: ErrorCodeAndDescription
            Used By: Payment
        */
        class ErrorCodeAndDescription: Codable {
            
            public var code: String
            
            public var description: String
            

            public enum CodingKeys: String, CodingKey {
                
                case code = "code"
                
                case description = "description"
                
            }

            public init(code: String, description: String) {
                
                self.code = code
                
                self.description = description
                
            }

            public func duplicate() -> ErrorCodeAndDescription {
                let dict = self.dictionary!
                let copy = ErrorCodeAndDescription(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                code = try container.decode(String.self, forKey: .code)
                
                
                
                
                description = try container.decode(String.self, forKey: .description)
                
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(code, forKey: .code)
                
                
                
                
                try? container.encodeIfPresent(description, forKey: .description)
                
                
            }
            
        }
        
        /*
            Model: HttpErrorCodeAndResponse
            Used By: Payment
        */
        class HttpErrorCodeAndResponse: Codable {
            
            public var error: ErrorCodeAndDescription
            
            public var success: Bool
            

            public enum CodingKeys: String, CodingKey {
                
                case error = "error"
                
                case success = "success"
                
            }

            public init(error: ErrorCodeAndDescription, success: Bool) {
                
                self.error = error
                
                self.success = success
                
            }

            public func duplicate() -> HttpErrorCodeAndResponse {
                let dict = self.dictionary!
                let copy = HttpErrorCodeAndResponse(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                error = try container.decode(ErrorCodeAndDescription.self, forKey: .error)
                
                
                
                
                success = try container.decode(Bool.self, forKey: .success)
                
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(error, forKey: .error)
                
                
                
                
                try? container.encodeIfPresent(success, forKey: .success)
                
                
            }
            
        }
        
        /*
            Model: AttachCardRequest
            Used By: Payment
        */
        class AttachCardRequest: Codable {
            
            public var refresh: Bool?
            
            public var nameOnCard: String?
            
            public var nickname: String?
            
            public var cardId: String
            

            public enum CodingKeys: String, CodingKey {
                
                case refresh = "refresh"
                
                case nameOnCard = "name_on_card"
                
                case nickname = "nickname"
                
                case cardId = "card_id"
                
            }

            public init(cardId: String, nameOnCard: String?, nickname: String?, refresh: Bool?) {
                
                self.refresh = refresh
                
                self.nameOnCard = nameOnCard
                
                self.nickname = nickname
                
                self.cardId = cardId
                
            }

            public func duplicate() -> AttachCardRequest {
                let dict = self.dictionary!
                let copy = AttachCardRequest(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                do {
                    refresh = try container.decode(Bool.self, forKey: .refresh)
                
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
                
                
                
                do {
                    nickname = try container.decode(String.self, forKey: .nickname)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                cardId = try container.decode(String.self, forKey: .cardId)
                
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encode(refresh, forKey: .refresh)
                
                
                
                
                try? container.encodeIfPresent(nameOnCard, forKey: .nameOnCard)
                
                
                
                
                try? container.encodeIfPresent(nickname, forKey: .nickname)
                
                
                
                
                try? container.encode(cardId, forKey: .cardId)
                
                
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
            
            public var api: String?
            
            public var customerId: String?
            
            public var aggregator: String
            

            public enum CodingKeys: String, CodingKey {
                
                case api = "api"
                
                case customerId = "customer_id"
                
                case aggregator = "aggregator"
                
            }

            public init(aggregator: String, api: String?, customerId: String?) {
                
                self.api = api
                
                self.customerId = customerId
                
                self.aggregator = aggregator
                
            }

            public func duplicate() -> CardPaymentGateway {
                let dict = self.dictionary!
                let copy = CardPaymentGateway(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                do {
                    api = try container.decode(String.self, forKey: .api)
                
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
                
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encode(api, forKey: .api)
                
                
                
                
                try? container.encode(customerId, forKey: .customerId)
                
                
                
                
                try? container.encodeIfPresent(aggregator, forKey: .aggregator)
                
                
            }
            
        }
        
        /*
            Model: ActiveCardPaymentGatewayResponse
            Used By: Payment
        */
        class ActiveCardPaymentGatewayResponse: Codable {
            
            public var message: String
            
            public var cards: CardPaymentGateway
            
            public var success: Bool
            

            public enum CodingKeys: String, CodingKey {
                
                case message = "message"
                
                case cards = "cards"
                
                case success = "success"
                
            }

            public init(cards: CardPaymentGateway, message: String, success: Bool) {
                
                self.message = message
                
                self.cards = cards
                
                self.success = success
                
            }

            public func duplicate() -> ActiveCardPaymentGatewayResponse {
                let dict = self.dictionary!
                let copy = ActiveCardPaymentGatewayResponse(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                message = try container.decode(String.self, forKey: .message)
                
                
                
                
                cards = try container.decode(CardPaymentGateway.self, forKey: .cards)
                
                
                
                
                success = try container.decode(Bool.self, forKey: .success)
                
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(message, forKey: .message)
                
                
                
                
                try? container.encodeIfPresent(cards, forKey: .cards)
                
                
                
                
                try? container.encodeIfPresent(success, forKey: .success)
                
                
            }
            
        }
        
        /*
            Model: Card
            Used By: Payment
        */
        class Card: Codable {
            
            public var cardIsin: String?
            
            public var cardToken: String?
            
            public var cardId: String?
            
            public var cardType: String?
            
            public var cardIssuer: String?
            
            public var aggregatorName: String
            
            public var cardName: String?
            
            public var expYear: Int?
            
            public var cardBrandImage: String?
            
            public var cardReference: String?
            
            public var cardNumber: String?
            
            public var nickname: String?
            
            public var expired: Bool?
            
            public var cardFingerprint: String?
            
            public var cardBrand: String?
            
            public var expMonth: Int?
            

            public enum CodingKeys: String, CodingKey {
                
                case cardIsin = "card_isin"
                
                case cardToken = "card_token"
                
                case cardId = "card_id"
                
                case cardType = "card_type"
                
                case cardIssuer = "card_issuer"
                
                case aggregatorName = "aggregator_name"
                
                case cardName = "card_name"
                
                case expYear = "exp_year"
                
                case cardBrandImage = "card_brand_image"
                
                case cardReference = "card_reference"
                
                case cardNumber = "card_number"
                
                case nickname = "nickname"
                
                case expired = "expired"
                
                case cardFingerprint = "card_fingerprint"
                
                case cardBrand = "card_brand"
                
                case expMonth = "exp_month"
                
            }

            public init(aggregatorName: String, cardBrand: String?, cardBrandImage: String?, cardFingerprint: String?, cardId: String?, cardIsin: String?, cardIssuer: String?, cardName: String?, cardNumber: String?, cardReference: String?, cardToken: String?, cardType: String?, expired: Bool?, expMonth: Int?, expYear: Int?, nickname: String?) {
                
                self.cardIsin = cardIsin
                
                self.cardToken = cardToken
                
                self.cardId = cardId
                
                self.cardType = cardType
                
                self.cardIssuer = cardIssuer
                
                self.aggregatorName = aggregatorName
                
                self.cardName = cardName
                
                self.expYear = expYear
                
                self.cardBrandImage = cardBrandImage
                
                self.cardReference = cardReference
                
                self.cardNumber = cardNumber
                
                self.nickname = nickname
                
                self.expired = expired
                
                self.cardFingerprint = cardFingerprint
                
                self.cardBrand = cardBrand
                
                self.expMonth = expMonth
                
            }

            public func duplicate() -> Card {
                let dict = self.dictionary!
                let copy = Card(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
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
                    cardId = try container.decode(String.self, forKey: .cardId)
                
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
                    cardIssuer = try container.decode(String.self, forKey: .cardIssuer)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                aggregatorName = try container.decode(String.self, forKey: .aggregatorName)
                
                
                
                
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
                    cardBrandImage = try container.decode(String.self, forKey: .cardBrandImage)
                
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
                
                
                
                do {
                    expMonth = try container.decode(Int.self, forKey: .expMonth)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encode(cardIsin, forKey: .cardIsin)
                
                
                
                
                try? container.encode(cardToken, forKey: .cardToken)
                
                
                
                
                try? container.encode(cardId, forKey: .cardId)
                
                
                
                
                try? container.encode(cardType, forKey: .cardType)
                
                
                
                
                try? container.encode(cardIssuer, forKey: .cardIssuer)
                
                
                
                
                try? container.encodeIfPresent(aggregatorName, forKey: .aggregatorName)
                
                
                
                
                try? container.encode(cardName, forKey: .cardName)
                
                
                
                
                try? container.encode(expYear, forKey: .expYear)
                
                
                
                
                try? container.encode(cardBrandImage, forKey: .cardBrandImage)
                
                
                
                
                try? container.encode(cardReference, forKey: .cardReference)
                
                
                
                
                try? container.encode(cardNumber, forKey: .cardNumber)
                
                
                
                
                try? container.encode(nickname, forKey: .nickname)
                
                
                
                
                try? container.encode(expired, forKey: .expired)
                
                
                
                
                try? container.encode(cardFingerprint, forKey: .cardFingerprint)
                
                
                
                
                try? container.encode(cardBrand, forKey: .cardBrand)
                
                
                
                
                try? container.encode(expMonth, forKey: .expMonth)
                
                
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
            
            public var transactionAmountInPaise: Int
            
            public var payload: String
            
            public var aggregator: String
            
            public var merchantParams: [String: Any]
            
            public var phoneNumber: String
            

            public enum CodingKeys: String, CodingKey {
                
                case transactionAmountInPaise = "transaction_amount_in_paise"
                
                case payload = "payload"
                
                case aggregator = "aggregator"
                
                case merchantParams = "merchant_params"
                
                case phoneNumber = "phone_number"
                
            }

            public init(aggregator: String, merchantParams: [String: Any], payload: String, phoneNumber: String, transactionAmountInPaise: Int) {
                
                self.transactionAmountInPaise = transactionAmountInPaise
                
                self.payload = payload
                
                self.aggregator = aggregator
                
                self.merchantParams = merchantParams
                
                self.phoneNumber = phoneNumber
                
            }

            public func duplicate() -> ValidateCustomerRequest {
                let dict = self.dictionary!
                let copy = ValidateCustomerRequest(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                transactionAmountInPaise = try container.decode(Int.self, forKey: .transactionAmountInPaise)
                
                
                
                
                payload = try container.decode(String.self, forKey: .payload)
                
                
                
                
                aggregator = try container.decode(String.self, forKey: .aggregator)
                
                
                
                
                merchantParams = try container.decode([String: Any].self, forKey: .merchantParams)
                
                
                
                
                phoneNumber = try container.decode(String.self, forKey: .phoneNumber)
                
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(transactionAmountInPaise, forKey: .transactionAmountInPaise)
                
                
                
                
                try? container.encode(payload, forKey: .payload)
                
                
                
                
                try? container.encodeIfPresent(aggregator, forKey: .aggregator)
                
                
                
                
                try? container.encodeIfPresent(merchantParams, forKey: .merchantParams)
                
                
                
                
                try? container.encodeIfPresent(phoneNumber, forKey: .phoneNumber)
                
                
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
            
            public var verified: Bool?
            
            public var aggregator: String
            
            public var transactionToken: String?
            
            public var orderId: String
            
            public var amount: Int
            

            public enum CodingKeys: String, CodingKey {
                
                case verified = "verified"
                
                case aggregator = "aggregator"
                
                case transactionToken = "transaction_token"
                
                case orderId = "order_id"
                
                case amount = "amount"
                
            }

            public init(aggregator: String, amount: Int, orderId: String, transactionToken: String?, verified: Bool?) {
                
                self.verified = verified
                
                self.aggregator = aggregator
                
                self.transactionToken = transactionToken
                
                self.orderId = orderId
                
                self.amount = amount
                
            }

            public func duplicate() -> ChargeCustomerRequest {
                let dict = self.dictionary!
                let copy = ChargeCustomerRequest(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                do {
                    verified = try container.decode(Bool.self, forKey: .verified)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                aggregator = try container.decode(String.self, forKey: .aggregator)
                
                
                
                
                do {
                    transactionToken = try container.decode(String.self, forKey: .transactionToken)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                orderId = try container.decode(String.self, forKey: .orderId)
                
                
                
                
                amount = try container.decode(Int.self, forKey: .amount)
                
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encode(verified, forKey: .verified)
                
                
                
                
                try? container.encodeIfPresent(aggregator, forKey: .aggregator)
                
                
                
                
                try? container.encode(transactionToken, forKey: .transactionToken)
                
                
                
                
                try? container.encodeIfPresent(orderId, forKey: .orderId)
                
                
                
                
                try? container.encode(amount, forKey: .amount)
                
                
            }
            
        }
        
        /*
            Model: ChargeCustomerResponse
            Used By: Payment
        */
        class ChargeCustomerResponse: Codable {
            
            public var deliveryAddressId: String?
            
            public var cartId: String?
            
            public var aggregator: String
            
            public var message: String
            
            public var success: Bool
            
            public var orderId: String
            
            public var status: String
            

            public enum CodingKeys: String, CodingKey {
                
                case deliveryAddressId = "delivery_address_id"
                
                case cartId = "cart_id"
                
                case aggregator = "aggregator"
                
                case message = "message"
                
                case success = "success"
                
                case orderId = "order_id"
                
                case status = "status"
                
            }

            public init(aggregator: String, cartId: String?, deliveryAddressId: String?, message: String, orderId: String, status: String, success: Bool) {
                
                self.deliveryAddressId = deliveryAddressId
                
                self.cartId = cartId
                
                self.aggregator = aggregator
                
                self.message = message
                
                self.success = success
                
                self.orderId = orderId
                
                self.status = status
                
            }

            public func duplicate() -> ChargeCustomerResponse {
                let dict = self.dictionary!
                let copy = ChargeCustomerResponse(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                do {
                    deliveryAddressId = try container.decode(String.self, forKey: .deliveryAddressId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    cartId = try container.decode(String.self, forKey: .cartId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                aggregator = try container.decode(String.self, forKey: .aggregator)
                
                
                
                
                message = try container.decode(String.self, forKey: .message)
                
                
                
                
                success = try container.decode(Bool.self, forKey: .success)
                
                
                
                
                orderId = try container.decode(String.self, forKey: .orderId)
                
                
                
                
                status = try container.decode(String.self, forKey: .status)
                
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encode(deliveryAddressId, forKey: .deliveryAddressId)
                
                
                
                
                try? container.encode(cartId, forKey: .cartId)
                
                
                
                
                try? container.encodeIfPresent(aggregator, forKey: .aggregator)
                
                
                
                
                try? container.encodeIfPresent(message, forKey: .message)
                
                
                
                
                try? container.encodeIfPresent(success, forKey: .success)
                
                
                
                
                try? container.encodeIfPresent(orderId, forKey: .orderId)
                
                
                
                
                try? container.encodeIfPresent(status, forKey: .status)
                
                
            }
            
        }
        
        /*
            Model: PaymentInitializationRequest
            Used By: Payment
        */
        class PaymentInitializationRequest: Codable {
            
            public var timeout: Int?
            
            public var email: String
            
            public var aggregator: String
            
            public var contact: String
            
            public var currency: String
            
            public var customerId: String
            
            public var method: String
            
            public var merchantOrderId: String
            
            public var razorpayPaymentId: String?
            
            public var orderId: String
            
            public var amount: Int
            
            public var vpa: String?
            

            public enum CodingKeys: String, CodingKey {
                
                case timeout = "timeout"
                
                case email = "email"
                
                case aggregator = "aggregator"
                
                case contact = "contact"
                
                case currency = "currency"
                
                case customerId = "customer_id"
                
                case method = "method"
                
                case merchantOrderId = "merchant_order_id"
                
                case razorpayPaymentId = "razorpay_payment_id"
                
                case orderId = "order_id"
                
                case amount = "amount"
                
                case vpa = "vpa"
                
            }

            public init(aggregator: String, amount: Int, contact: String, currency: String, customerId: String, email: String, merchantOrderId: String, method: String, orderId: String, razorpayPaymentId: String?, timeout: Int?, vpa: String?) {
                
                self.timeout = timeout
                
                self.email = email
                
                self.aggregator = aggregator
                
                self.contact = contact
                
                self.currency = currency
                
                self.customerId = customerId
                
                self.method = method
                
                self.merchantOrderId = merchantOrderId
                
                self.razorpayPaymentId = razorpayPaymentId
                
                self.orderId = orderId
                
                self.amount = amount
                
                self.vpa = vpa
                
            }

            public func duplicate() -> PaymentInitializationRequest {
                let dict = self.dictionary!
                let copy = PaymentInitializationRequest(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                do {
                    timeout = try container.decode(Int.self, forKey: .timeout)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                email = try container.decode(String.self, forKey: .email)
                
                
                
                
                aggregator = try container.decode(String.self, forKey: .aggregator)
                
                
                
                
                contact = try container.decode(String.self, forKey: .contact)
                
                
                
                
                currency = try container.decode(String.self, forKey: .currency)
                
                
                
                
                customerId = try container.decode(String.self, forKey: .customerId)
                
                
                
                
                method = try container.decode(String.self, forKey: .method)
                
                
                
                
                merchantOrderId = try container.decode(String.self, forKey: .merchantOrderId)
                
                
                
                
                do {
                    razorpayPaymentId = try container.decode(String.self, forKey: .razorpayPaymentId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                orderId = try container.decode(String.self, forKey: .orderId)
                
                
                
                
                amount = try container.decode(Int.self, forKey: .amount)
                
                
                
                
                do {
                    vpa = try container.decode(String.self, forKey: .vpa)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encode(timeout, forKey: .timeout)
                
                
                
                
                try? container.encodeIfPresent(email, forKey: .email)
                
                
                
                
                try? container.encodeIfPresent(aggregator, forKey: .aggregator)
                
                
                
                
                try? container.encodeIfPresent(contact, forKey: .contact)
                
                
                
                
                try? container.encodeIfPresent(currency, forKey: .currency)
                
                
                
                
                try? container.encodeIfPresent(customerId, forKey: .customerId)
                
                
                
                
                try? container.encodeIfPresent(method, forKey: .method)
                
                
                
                
                try? container.encodeIfPresent(merchantOrderId, forKey: .merchantOrderId)
                
                
                
                
                try? container.encode(razorpayPaymentId, forKey: .razorpayPaymentId)
                
                
                
                
                try? container.encodeIfPresent(orderId, forKey: .orderId)
                
                
                
                
                try? container.encode(amount, forKey: .amount)
                
                
                
                
                try? container.encode(vpa, forKey: .vpa)
                
                
            }
            
        }
        
        /*
            Model: PaymentInitializationResponse
            Used By: Payment
        */
        class PaymentInitializationResponse: Codable {
            
            public var pollingUrl: String
            
            public var timeout: Int?
            
            public var amount: Int?
            
            public var virtualId: String?
            
            public var upiPollUrl: String?
            
            public var bqrImage: String?
            
            public var aggregator: String
            
            public var method: String
            
            public var success: Bool
            
            public var currency: String?
            
            public var customerId: String?
            
            public var merchantOrderId: String
            
            public var razorpayPaymentId: String?
            
            public var status: String?
            
            public var aggregatorOrderId: String?
            
            public var vpa: String?
            

            public enum CodingKeys: String, CodingKey {
                
                case pollingUrl = "polling_url"
                
                case timeout = "timeout"
                
                case amount = "amount"
                
                case virtualId = "virtual_id"
                
                case upiPollUrl = "upi_poll_url"
                
                case bqrImage = "bqr_image"
                
                case aggregator = "aggregator"
                
                case method = "method"
                
                case success = "success"
                
                case currency = "currency"
                
                case customerId = "customer_id"
                
                case merchantOrderId = "merchant_order_id"
                
                case razorpayPaymentId = "razorpay_payment_id"
                
                case status = "status"
                
                case aggregatorOrderId = "aggregator_order_id"
                
                case vpa = "vpa"
                
            }

            public init(aggregator: String, aggregatorOrderId: String?, amount: Int?, bqrImage: String?, currency: String?, customerId: String?, merchantOrderId: String, method: String, pollingUrl: String, razorpayPaymentId: String?, status: String?, success: Bool, timeout: Int?, upiPollUrl: String?, virtualId: String?, vpa: String?) {
                
                self.pollingUrl = pollingUrl
                
                self.timeout = timeout
                
                self.amount = amount
                
                self.virtualId = virtualId
                
                self.upiPollUrl = upiPollUrl
                
                self.bqrImage = bqrImage
                
                self.aggregator = aggregator
                
                self.method = method
                
                self.success = success
                
                self.currency = currency
                
                self.customerId = customerId
                
                self.merchantOrderId = merchantOrderId
                
                self.razorpayPaymentId = razorpayPaymentId
                
                self.status = status
                
                self.aggregatorOrderId = aggregatorOrderId
                
                self.vpa = vpa
                
            }

            public func duplicate() -> PaymentInitializationResponse {
                let dict = self.dictionary!
                let copy = PaymentInitializationResponse(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                pollingUrl = try container.decode(String.self, forKey: .pollingUrl)
                
                
                
                
                do {
                    timeout = try container.decode(Int.self, forKey: .timeout)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    amount = try container.decode(Int.self, forKey: .amount)
                
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
                
                
                
                do {
                    upiPollUrl = try container.decode(String.self, forKey: .upiPollUrl)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    bqrImage = try container.decode(String.self, forKey: .bqrImage)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                aggregator = try container.decode(String.self, forKey: .aggregator)
                
                
                
                
                method = try container.decode(String.self, forKey: .method)
                
                
                
                
                success = try container.decode(Bool.self, forKey: .success)
                
                
                
                
                do {
                    currency = try container.decode(String.self, forKey: .currency)
                
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
                
                
                
                merchantOrderId = try container.decode(String.self, forKey: .merchantOrderId)
                
                
                
                
                do {
                    razorpayPaymentId = try container.decode(String.self, forKey: .razorpayPaymentId)
                
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
                    vpa = try container.decode(String.self, forKey: .vpa)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(pollingUrl, forKey: .pollingUrl)
                
                
                
                
                try? container.encode(timeout, forKey: .timeout)
                
                
                
                
                try? container.encode(amount, forKey: .amount)
                
                
                
                
                try? container.encode(virtualId, forKey: .virtualId)
                
                
                
                
                try? container.encode(upiPollUrl, forKey: .upiPollUrl)
                
                
                
                
                try? container.encode(bqrImage, forKey: .bqrImage)
                
                
                
                
                try? container.encodeIfPresent(aggregator, forKey: .aggregator)
                
                
                
                
                try? container.encodeIfPresent(method, forKey: .method)
                
                
                
                
                try? container.encodeIfPresent(success, forKey: .success)
                
                
                
                
                try? container.encode(currency, forKey: .currency)
                
                
                
                
                try? container.encode(customerId, forKey: .customerId)
                
                
                
                
                try? container.encodeIfPresent(merchantOrderId, forKey: .merchantOrderId)
                
                
                
                
                try? container.encode(razorpayPaymentId, forKey: .razorpayPaymentId)
                
                
                
                
                try? container.encodeIfPresent(status, forKey: .status)
                
                
                
                
                try? container.encodeIfPresent(aggregatorOrderId, forKey: .aggregatorOrderId)
                
                
                
                
                try? container.encode(vpa, forKey: .vpa)
                
                
            }
            
        }
        
        /*
            Model: PaymentStatusUpdateRequest
            Used By: Payment
        */
        class PaymentStatusUpdateRequest: Codable {
            
            public var email: String
            
            public var aggregator: String
            
            public var contact: String
            
            public var currency: String
            
            public var customerId: String
            
            public var method: String
            
            public var merchantOrderId: String
            
            public var orderId: String
            
            public var status: String
            
            public var amount: Int
            
            public var vpa: String
            

            public enum CodingKeys: String, CodingKey {
                
                case email = "email"
                
                case aggregator = "aggregator"
                
                case contact = "contact"
                
                case currency = "currency"
                
                case customerId = "customer_id"
                
                case method = "method"
                
                case merchantOrderId = "merchant_order_id"
                
                case orderId = "order_id"
                
                case status = "status"
                
                case amount = "amount"
                
                case vpa = "vpa"
                
            }

            public init(aggregator: String, amount: Int, contact: String, currency: String, customerId: String, email: String, merchantOrderId: String, method: String, orderId: String, status: String, vpa: String) {
                
                self.email = email
                
                self.aggregator = aggregator
                
                self.contact = contact
                
                self.currency = currency
                
                self.customerId = customerId
                
                self.method = method
                
                self.merchantOrderId = merchantOrderId
                
                self.orderId = orderId
                
                self.status = status
                
                self.amount = amount
                
                self.vpa = vpa
                
            }

            public func duplicate() -> PaymentStatusUpdateRequest {
                let dict = self.dictionary!
                let copy = PaymentStatusUpdateRequest(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                email = try container.decode(String.self, forKey: .email)
                
                
                
                
                aggregator = try container.decode(String.self, forKey: .aggregator)
                
                
                
                
                contact = try container.decode(String.self, forKey: .contact)
                
                
                
                
                currency = try container.decode(String.self, forKey: .currency)
                
                
                
                
                customerId = try container.decode(String.self, forKey: .customerId)
                
                
                
                
                method = try container.decode(String.self, forKey: .method)
                
                
                
                
                merchantOrderId = try container.decode(String.self, forKey: .merchantOrderId)
                
                
                
                
                orderId = try container.decode(String.self, forKey: .orderId)
                
                
                
                
                status = try container.decode(String.self, forKey: .status)
                
                
                
                
                amount = try container.decode(Int.self, forKey: .amount)
                
                
                
                
                vpa = try container.decode(String.self, forKey: .vpa)
                
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(email, forKey: .email)
                
                
                
                
                try? container.encodeIfPresent(aggregator, forKey: .aggregator)
                
                
                
                
                try? container.encodeIfPresent(contact, forKey: .contact)
                
                
                
                
                try? container.encodeIfPresent(currency, forKey: .currency)
                
                
                
                
                try? container.encodeIfPresent(customerId, forKey: .customerId)
                
                
                
                
                try? container.encodeIfPresent(method, forKey: .method)
                
                
                
                
                try? container.encodeIfPresent(merchantOrderId, forKey: .merchantOrderId)
                
                
                
                
                try? container.encodeIfPresent(orderId, forKey: .orderId)
                
                
                
                
                try? container.encodeIfPresent(status, forKey: .status)
                
                
                
                
                try? container.encode(amount, forKey: .amount)
                
                
                
                
                try? container.encodeIfPresent(vpa, forKey: .vpa)
                
                
            }
            
        }
        
        /*
            Model: PaymentStatusUpdateResponse
            Used By: Payment
        */
        class PaymentStatusUpdateResponse: Codable {
            
            public var aggregatorName: String
            
            public var status: String
            
            public var retry: Bool
            

            public enum CodingKeys: String, CodingKey {
                
                case aggregatorName = "aggregator_name"
                
                case status = "status"
                
                case retry = "retry"
                
            }

            public init(aggregatorName: String, retry: Bool, status: String) {
                
                self.aggregatorName = aggregatorName
                
                self.status = status
                
                self.retry = retry
                
            }

            public func duplicate() -> PaymentStatusUpdateResponse {
                let dict = self.dictionary!
                let copy = PaymentStatusUpdateResponse(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                aggregatorName = try container.decode(String.self, forKey: .aggregatorName)
                
                
                
                
                status = try container.decode(String.self, forKey: .status)
                
                
                
                
                retry = try container.decode(Bool.self, forKey: .retry)
                
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(aggregatorName, forKey: .aggregatorName)
                
                
                
                
                try? container.encodeIfPresent(status, forKey: .status)
                
                
                
                
                try? container.encodeIfPresent(retry, forKey: .retry)
                
                
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

            public init(code: String?, packageName: String?) {
                
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
            
            public var code: String?
            
            public var packageName: String?
            
            public var displayName: String?
            
            public var logos: PaymentModeLogo?
            

            public enum CodingKeys: String, CodingKey {
                
                case code = "code"
                
                case packageName = "package_name"
                
                case displayName = "display_name"
                
                case logos = "logos"
                
            }

            public init(code: String?, displayName: String?, logos: PaymentModeLogo?, packageName: String?) {
                
                self.code = code
                
                self.packageName = packageName
                
                self.displayName = displayName
                
                self.logos = logos
                
            }

            public func duplicate() -> IntentApp {
                let dict = self.dictionary!
                let copy = IntentApp(dictionary: dict)!
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
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encode(code, forKey: .code)
                
                
                
                
                try? container.encode(packageName, forKey: .packageName)
                
                
                
                
                try? container.encode(displayName, forKey: .displayName)
                
                
                
                
                try? container.encode(logos, forKey: .logos)
                
                
            }
            
        }
        
        /*
            Model: PaymentModeList
            Used By: Payment
        */
        class PaymentModeList: Codable {
            
            public var cardIsin: String?
            
            public var timeout: Int?
            
            public var fyndVpa: String?
            
            public var cardId: String?
            
            public var cardIssuer: String?
            
            public var intentFlow: Bool?
            
            public var nickname: String?
            
            public var intentAppErrorDictList: [IntentAppErrorList]?
            
            public var expired: Bool?
            
            public var displayPriority: Int?
            
            public var cardFingerprint: String?
            
            public var name: String?
            
            public var cardToken: String?
            
            public var expYear: Int?
            
            public var cardName: String?
            
            public var code: String?
            
            public var retryCount: Int?
            
            public var intentApp: [IntentApp]?
            
            public var cardBrandImage: String?
            
            public var cardBrand: String?
            
            public var logoUrl: PaymentModeLogo?
            
            public var cardType: String?
            
            public var aggregatorName: String
            
            public var intentAppErrorList: [String]?
            
            public var cardReference: String?
            
            public var cardNumber: String?
            
            public var merchantCode: String?
            
            public var displayName: String?
            
            public var expMonth: Int?
            

            public enum CodingKeys: String, CodingKey {
                
                case cardIsin = "card_isin"
                
                case timeout = "timeout"
                
                case fyndVpa = "fynd_vpa"
                
                case cardId = "card_id"
                
                case cardIssuer = "card_issuer"
                
                case intentFlow = "intent_flow"
                
                case nickname = "nickname"
                
                case intentAppErrorDictList = "intent_app_error_dict_list"
                
                case expired = "expired"
                
                case displayPriority = "display_priority"
                
                case cardFingerprint = "card_fingerprint"
                
                case name = "name"
                
                case cardToken = "card_token"
                
                case expYear = "exp_year"
                
                case cardName = "card_name"
                
                case code = "code"
                
                case retryCount = "retry_count"
                
                case intentApp = "intent_app"
                
                case cardBrandImage = "card_brand_image"
                
                case cardBrand = "card_brand"
                
                case logoUrl = "logo_url"
                
                case cardType = "card_type"
                
                case aggregatorName = "aggregator_name"
                
                case intentAppErrorList = "intent_app_error_list"
                
                case cardReference = "card_reference"
                
                case cardNumber = "card_number"
                
                case merchantCode = "merchant_code"
                
                case displayName = "display_name"
                
                case expMonth = "exp_month"
                
            }

            public init(aggregatorName: String, cardBrand: String?, cardBrandImage: String?, cardFingerprint: String?, cardId: String?, cardIsin: String?, cardIssuer: String?, cardName: String?, cardNumber: String?, cardReference: String?, cardToken: String?, cardType: String?, code: String?, displayName: String?, displayPriority: Int?, expired: Bool?, expMonth: Int?, expYear: Int?, fyndVpa: String?, intentApp: [IntentApp]?, intentAppErrorDictList: [IntentAppErrorList]?, intentAppErrorList: [String]?, intentFlow: Bool?, logoUrl: PaymentModeLogo?, merchantCode: String?, name: String?, nickname: String?, retryCount: Int?, timeout: Int?) {
                
                self.cardIsin = cardIsin
                
                self.timeout = timeout
                
                self.fyndVpa = fyndVpa
                
                self.cardId = cardId
                
                self.cardIssuer = cardIssuer
                
                self.intentFlow = intentFlow
                
                self.nickname = nickname
                
                self.intentAppErrorDictList = intentAppErrorDictList
                
                self.expired = expired
                
                self.displayPriority = displayPriority
                
                self.cardFingerprint = cardFingerprint
                
                self.name = name
                
                self.cardToken = cardToken
                
                self.expYear = expYear
                
                self.cardName = cardName
                
                self.code = code
                
                self.retryCount = retryCount
                
                self.intentApp = intentApp
                
                self.cardBrandImage = cardBrandImage
                
                self.cardBrand = cardBrand
                
                self.logoUrl = logoUrl
                
                self.cardType = cardType
                
                self.aggregatorName = aggregatorName
                
                self.intentAppErrorList = intentAppErrorList
                
                self.cardReference = cardReference
                
                self.cardNumber = cardNumber
                
                self.merchantCode = merchantCode
                
                self.displayName = displayName
                
                self.expMonth = expMonth
                
            }

            public func duplicate() -> PaymentModeList {
                let dict = self.dictionary!
                let copy = PaymentModeList(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                do {
                    cardIsin = try container.decode(String.self, forKey: .cardIsin)
                
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
                    fyndVpa = try container.decode(String.self, forKey: .fyndVpa)
                
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
                    cardIssuer = try container.decode(String.self, forKey: .cardIssuer)
                
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
                    nickname = try container.decode(String.self, forKey: .nickname)
                
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
                    expired = try container.decode(Bool.self, forKey: .expired)
                
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
                    cardToken = try container.decode(String.self, forKey: .cardToken)
                
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
                    cardName = try container.decode(String.self, forKey: .cardName)
                
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
                    retryCount = try container.decode(Int.self, forKey: .retryCount)
                
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
                    cardBrandImage = try container.decode(String.self, forKey: .cardBrandImage)
                
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
                    logoUrl = try container.decode(PaymentModeLogo.self, forKey: .logoUrl)
                
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
                    intentAppErrorList = try container.decode([String].self, forKey: .intentAppErrorList)
                
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
                    cardNumber = try container.decode(String.self, forKey: .cardNumber)
                
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
                    displayName = try container.decode(String.self, forKey: .displayName)
                
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
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encode(cardIsin, forKey: .cardIsin)
                
                
                
                
                try? container.encode(timeout, forKey: .timeout)
                
                
                
                
                try? container.encode(fyndVpa, forKey: .fyndVpa)
                
                
                
                
                try? container.encode(cardId, forKey: .cardId)
                
                
                
                
                try? container.encode(cardIssuer, forKey: .cardIssuer)
                
                
                
                
                try? container.encode(intentFlow, forKey: .intentFlow)
                
                
                
                
                try? container.encode(nickname, forKey: .nickname)
                
                
                
                
                try? container.encode(intentAppErrorDictList, forKey: .intentAppErrorDictList)
                
                
                
                
                try? container.encode(expired, forKey: .expired)
                
                
                
                
                try? container.encode(displayPriority, forKey: .displayPriority)
                
                
                
                
                try? container.encode(cardFingerprint, forKey: .cardFingerprint)
                
                
                
                
                try? container.encode(name, forKey: .name)
                
                
                
                
                try? container.encode(cardToken, forKey: .cardToken)
                
                
                
                
                try? container.encode(expYear, forKey: .expYear)
                
                
                
                
                try? container.encode(cardName, forKey: .cardName)
                
                
                
                
                try? container.encode(code, forKey: .code)
                
                
                
                
                try? container.encode(retryCount, forKey: .retryCount)
                
                
                
                
                try? container.encode(intentApp, forKey: .intentApp)
                
                
                
                
                try? container.encode(cardBrandImage, forKey: .cardBrandImage)
                
                
                
                
                try? container.encode(cardBrand, forKey: .cardBrand)
                
                
                
                
                try? container.encode(logoUrl, forKey: .logoUrl)
                
                
                
                
                try? container.encode(cardType, forKey: .cardType)
                
                
                
                
                try? container.encodeIfPresent(aggregatorName, forKey: .aggregatorName)
                
                
                
                
                try? container.encode(intentAppErrorList, forKey: .intentAppErrorList)
                
                
                
                
                try? container.encode(cardReference, forKey: .cardReference)
                
                
                
                
                try? container.encode(cardNumber, forKey: .cardNumber)
                
                
                
                
                try? container.encode(merchantCode, forKey: .merchantCode)
                
                
                
                
                try? container.encode(displayName, forKey: .displayName)
                
                
                
                
                try? container.encode(expMonth, forKey: .expMonth)
                
                
            }
            
        }
        
        /*
            Model: RootPaymentMode
            Used By: Payment
        */
        class RootPaymentMode: Codable {
            
            public var list: [PaymentModeList]?
            
            public var logoUrl: PaymentModeLogo?
            
            public var addCardEnabled: Bool?
            
            public var displayName: String
            
            public var aggregatorName: String?
            
            public var anonymousEnable: Bool?
            
            public var displayPriority: Int
            
            public var name: String
            
            public var logo: String?
            

            public enum CodingKeys: String, CodingKey {
                
                case list = "list"
                
                case logoUrl = "logo_url"
                
                case addCardEnabled = "add_card_enabled"
                
                case displayName = "display_name"
                
                case aggregatorName = "aggregator_name"
                
                case anonymousEnable = "anonymous_enable"
                
                case displayPriority = "display_priority"
                
                case name = "name"
                
                case logo = "logo"
                
            }

            public init(addCardEnabled: Bool?, aggregatorName: String?, anonymousEnable: Bool?, displayName: String, displayPriority: Int, list: [PaymentModeList]?, logo: String?, logoUrl: PaymentModeLogo?, name: String) {
                
                self.list = list
                
                self.logoUrl = logoUrl
                
                self.addCardEnabled = addCardEnabled
                
                self.displayName = displayName
                
                self.aggregatorName = aggregatorName
                
                self.anonymousEnable = anonymousEnable
                
                self.displayPriority = displayPriority
                
                self.name = name
                
                self.logo = logo
                
            }

            public func duplicate() -> RootPaymentMode {
                let dict = self.dictionary!
                let copy = RootPaymentMode(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                do {
                    list = try container.decode([PaymentModeList].self, forKey: .list)
                
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
                    addCardEnabled = try container.decode(Bool.self, forKey: .addCardEnabled)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                displayName = try container.decode(String.self, forKey: .displayName)
                
                
                
                
                do {
                    aggregatorName = try container.decode(String.self, forKey: .aggregatorName)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    anonymousEnable = try container.decode(Bool.self, forKey: .anonymousEnable)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                displayPriority = try container.decode(Int.self, forKey: .displayPriority)
                
                
                
                
                name = try container.decode(String.self, forKey: .name)
                
                
                
                
                do {
                    logo = try container.decode(String.self, forKey: .logo)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(list, forKey: .list)
                
                
                
                
                try? container.encode(logoUrl, forKey: .logoUrl)
                
                
                
                
                try? container.encode(addCardEnabled, forKey: .addCardEnabled)
                
                
                
                
                try? container.encodeIfPresent(displayName, forKey: .displayName)
                
                
                
                
                try? container.encode(aggregatorName, forKey: .aggregatorName)
                
                
                
                
                try? container.encode(anonymousEnable, forKey: .anonymousEnable)
                
                
                
                
                try? container.encodeIfPresent(displayPriority, forKey: .displayPriority)
                
                
                
                
                try? container.encodeIfPresent(name, forKey: .name)
                
                
                
                
                try? container.encode(logo, forKey: .logo)
                
                
            }
            
        }
        
        /*
            Model: AggregatorRoute
            Used By: Payment
        */
        class AggregatorRoute: Codable {
            
            public var paymentFlow: String?
            
            public var apiLink: String?
            
            public var paymentFlowData: String?
            
            public var data: [String: Any]?
            

            public enum CodingKeys: String, CodingKey {
                
                case paymentFlow = "payment_flow"
                
                case apiLink = "api_link"
                
                case paymentFlowData = "payment_flow_data"
                
                case data = "data"
                
            }

            public init(apiLink: String?, data: [String: Any]?, paymentFlow: String?, paymentFlowData: String?) {
                
                self.paymentFlow = paymentFlow
                
                self.apiLink = apiLink
                
                self.paymentFlowData = paymentFlowData
                
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
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encode(paymentFlow, forKey: .paymentFlow)
                
                
                
                
                try? container.encode(apiLink, forKey: .apiLink)
                
                
                
                
                try? container.encode(paymentFlowData, forKey: .paymentFlowData)
                
                
                
                
                try? container.encode(data, forKey: .data)
                
                
            }
            
        }
        
        /*
            Model: PaymentFlow
            Used By: Payment
        */
        class PaymentFlow: Codable {
            
            public var ccavenue: AggregatorRoute?
            
            public var simpl: AggregatorRoute?
            
            public var rupifi: AggregatorRoute?
            
            public var fynd: AggregatorRoute?
            
            public var jiopay: AggregatorRoute?
            
            public var mswipe: AggregatorRoute?
            
            public var bqrRazorpay: AggregatorRoute?
            
            public var payubiz: AggregatorRoute?
            
            public var juspay: AggregatorRoute?
            
            public var epaylater: AggregatorRoute?
            
            public var stripe: AggregatorRoute?
            
            public var razorpay: AggregatorRoute?
            
            public var upiRazorpay: AggregatorRoute?
            

            public enum CodingKeys: String, CodingKey {
                
                case ccavenue = "ccavenue"
                
                case simpl = "simpl"
                
                case rupifi = "rupifi"
                
                case fynd = "fynd"
                
                case jiopay = "jiopay"
                
                case mswipe = "mswipe"
                
                case bqrRazorpay = "bqr_razorpay"
                
                case payubiz = "payubiz"
                
                case juspay = "juspay"
                
                case epaylater = "epaylater"
                
                case stripe = "stripe"
                
                case razorpay = "razorpay"
                
                case upiRazorpay = "upi_razorpay"
                
            }

            public init(bqrRazorpay: AggregatorRoute?, ccavenue: AggregatorRoute?, epaylater: AggregatorRoute?, fynd: AggregatorRoute?, jiopay: AggregatorRoute?, juspay: AggregatorRoute?, mswipe: AggregatorRoute?, payubiz: AggregatorRoute?, razorpay: AggregatorRoute?, rupifi: AggregatorRoute?, simpl: AggregatorRoute?, stripe: AggregatorRoute?, upiRazorpay: AggregatorRoute?) {
                
                self.ccavenue = ccavenue
                
                self.simpl = simpl
                
                self.rupifi = rupifi
                
                self.fynd = fynd
                
                self.jiopay = jiopay
                
                self.mswipe = mswipe
                
                self.bqrRazorpay = bqrRazorpay
                
                self.payubiz = payubiz
                
                self.juspay = juspay
                
                self.epaylater = epaylater
                
                self.stripe = stripe
                
                self.razorpay = razorpay
                
                self.upiRazorpay = upiRazorpay
                
            }

            public func duplicate() -> PaymentFlow {
                let dict = self.dictionary!
                let copy = PaymentFlow(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
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
                    fynd = try container.decode(AggregatorRoute.self, forKey: .fynd)
                
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
                    mswipe = try container.decode(AggregatorRoute.self, forKey: .mswipe)
                
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
                    epaylater = try container.decode(AggregatorRoute.self, forKey: .epaylater)
                
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
                    razorpay = try container.decode(AggregatorRoute.self, forKey: .razorpay)
                
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
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encode(ccavenue, forKey: .ccavenue)
                
                
                
                
                try? container.encode(simpl, forKey: .simpl)
                
                
                
                
                try? container.encode(rupifi, forKey: .rupifi)
                
                
                
                
                try? container.encode(fynd, forKey: .fynd)
                
                
                
                
                try? container.encode(jiopay, forKey: .jiopay)
                
                
                
                
                try? container.encode(mswipe, forKey: .mswipe)
                
                
                
                
                try? container.encode(bqrRazorpay, forKey: .bqrRazorpay)
                
                
                
                
                try? container.encode(payubiz, forKey: .payubiz)
                
                
                
                
                try? container.encode(juspay, forKey: .juspay)
                
                
                
                
                try? container.encode(epaylater, forKey: .epaylater)
                
                
                
                
                try? container.encode(stripe, forKey: .stripe)
                
                
                
                
                try? container.encode(razorpay, forKey: .razorpay)
                
                
                
                
                try? container.encode(upiRazorpay, forKey: .upiRazorpay)
                
                
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
            
            public var success: Bool
            
            public var paymentOptions: PaymentOptionAndFlow
            

            public enum CodingKeys: String, CodingKey {
                
                case success = "success"
                
                case paymentOptions = "payment_options"
                
            }

            public init(paymentOptions: PaymentOptionAndFlow, success: Bool) {
                
                self.success = success
                
                self.paymentOptions = paymentOptions
                
            }

            public func duplicate() -> PaymentModeRouteResponse {
                let dict = self.dictionary!
                let copy = PaymentModeRouteResponse(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                success = try container.decode(Bool.self, forKey: .success)
                
                
                
                
                paymentOptions = try container.decode(PaymentOptionAndFlow.self, forKey: .paymentOptions)
                
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(success, forKey: .success)
                
                
                
                
                try? container.encodeIfPresent(paymentOptions, forKey: .paymentOptions)
                
                
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

            public init(kycUrl: String?, status: String?) {
                
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
            
            public var requestType: String
            
            public var orderId: String
            

            public enum CodingKeys: String, CodingKey {
                
                case requestType = "request_type"
                
                case orderId = "order_id"
                
            }

            public init(orderId: String, requestType: String) {
                
                self.requestType = requestType
                
                self.orderId = orderId
                
            }

            public func duplicate() -> ResendOrCancelPaymentRequest {
                let dict = self.dictionary!
                let copy = ResendOrCancelPaymentRequest(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                requestType = try container.decode(String.self, forKey: .requestType)
                
                
                
                
                orderId = try container.decode(String.self, forKey: .orderId)
                
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(requestType, forKey: .requestType)
                
                
                
                
                try? container.encodeIfPresent(orderId, forKey: .orderId)
                
                
            }
            
        }
        
        /*
            Model: LinkStatus
            Used By: Payment
        */
        class LinkStatus: Codable {
            
            public var message: String
            
            public var status: Bool
            

            public enum CodingKeys: String, CodingKey {
                
                case message = "message"
                
                case status = "status"
                
            }

            public init(message: String, status: Bool) {
                
                self.message = message
                
                self.status = status
                
            }

            public func duplicate() -> LinkStatus {
                let dict = self.dictionary!
                let copy = LinkStatus(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                message = try container.decode(String.self, forKey: .message)
                
                
                
                
                status = try container.decode(Bool.self, forKey: .status)
                
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(message, forKey: .message)
                
                
                
                
                try? container.encodeIfPresent(status, forKey: .status)
                
                
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
            
            public var logoLarge: String
            
            public var displayName: String?
            
            public var name: String
            
            public var logoSmall: String
            
            public var id: Int
            

            public enum CodingKeys: String, CodingKey {
                
                case logoLarge = "logo_large"
                
                case displayName = "display_name"
                
                case name = "name"
                
                case logoSmall = "logo_small"
                
                case id = "id"
                
            }

            public init(displayName: String?, id: Int, logoLarge: String, logoSmall: String, name: String) {
                
                self.logoLarge = logoLarge
                
                self.displayName = displayName
                
                self.name = name
                
                self.logoSmall = logoSmall
                
                self.id = id
                
            }

            public func duplicate() -> TransferItemsDetails {
                let dict = self.dictionary!
                let copy = TransferItemsDetails(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                logoLarge = try container.decode(String.self, forKey: .logoLarge)
                
                
                
                
                do {
                    displayName = try container.decode(String.self, forKey: .displayName)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                name = try container.decode(String.self, forKey: .name)
                
                
                
                
                logoSmall = try container.decode(String.self, forKey: .logoSmall)
                
                
                
                
                id = try container.decode(Int.self, forKey: .id)
                
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(logoLarge, forKey: .logoLarge)
                
                
                
                
                try? container.encodeIfPresent(displayName, forKey: .displayName)
                
                
                
                
                try? container.encodeIfPresent(name, forKey: .name)
                
                
                
                
                try? container.encodeIfPresent(logoSmall, forKey: .logoSmall)
                
                
                
                
                try? container.encodeIfPresent(id, forKey: .id)
                
                
            }
            
        }
        
        /*
            Model: TransferModeDetails
            Used By: Payment
        */
        class TransferModeDetails: Codable {
            
            public var displayName: String
            
            public var items: [TransferItemsDetails]?
            

            public enum CodingKeys: String, CodingKey {
                
                case displayName = "display_name"
                
                case items = "items"
                
            }

            public init(displayName: String, items: [TransferItemsDetails]?) {
                
                self.displayName = displayName
                
                self.items = items
                
            }

            public func duplicate() -> TransferModeDetails {
                let dict = self.dictionary!
                let copy = TransferModeDetails(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                displayName = try container.decode(String.self, forKey: .displayName)
                
                
                
                
                do {
                    items = try container.decode([TransferItemsDetails].self, forKey: .items)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(displayName, forKey: .displayName)
                
                
                
                
                try? container.encodeIfPresent(items, forKey: .items)
                
                
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
            
            public var address: String
            
            public var delightsUserName: String?
            
            public var email: String
            
            public var branchName: Bool?
            
            public var accountNo: String
            
            public var bankName: String
            
            public var modifiedOn: String
            
            public var beneficiaryId: String
            
            public var ifscCode: String
            
            public var isActive: Bool
            
            public var accountHolder: String
            
            public var title: String
            
            public var mobile: Bool?
            
            public var id: Int
            
            public var comment: Bool?
            
            public var transferMode: String
            
            public var subtitle: String
            
            public var createdOn: String
            
            public var displayName: String
            

            public enum CodingKeys: String, CodingKey {
                
                case address = "address"
                
                case delightsUserName = "delights_user_name"
                
                case email = "email"
                
                case branchName = "branch_name"
                
                case accountNo = "account_no"
                
                case bankName = "bank_name"
                
                case modifiedOn = "modified_on"
                
                case beneficiaryId = "beneficiary_id"
                
                case ifscCode = "ifsc_code"
                
                case isActive = "is_active"
                
                case accountHolder = "account_holder"
                
                case title = "title"
                
                case mobile = "mobile"
                
                case id = "id"
                
                case comment = "comment"
                
                case transferMode = "transfer_mode"
                
                case subtitle = "subtitle"
                
                case createdOn = "created_on"
                
                case displayName = "display_name"
                
            }

            public init(accountHolder: String, accountNo: String, address: String, bankName: String, beneficiaryId: String, branchName: Bool?, comment: Bool?, createdOn: String, delightsUserName: String?, displayName: String, email: String, id: Int, ifscCode: String, isActive: Bool, mobile: Bool?, modifiedOn: String, subtitle: String, title: String, transferMode: String) {
                
                self.address = address
                
                self.delightsUserName = delightsUserName
                
                self.email = email
                
                self.branchName = branchName
                
                self.accountNo = accountNo
                
                self.bankName = bankName
                
                self.modifiedOn = modifiedOn
                
                self.beneficiaryId = beneficiaryId
                
                self.ifscCode = ifscCode
                
                self.isActive = isActive
                
                self.accountHolder = accountHolder
                
                self.title = title
                
                self.mobile = mobile
                
                self.id = id
                
                self.comment = comment
                
                self.transferMode = transferMode
                
                self.subtitle = subtitle
                
                self.createdOn = createdOn
                
                self.displayName = displayName
                
            }

            public func duplicate() -> OrderBeneficiaryDetails {
                let dict = self.dictionary!
                let copy = OrderBeneficiaryDetails(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                address = try container.decode(String.self, forKey: .address)
                
                
                
                
                do {
                    delightsUserName = try container.decode(String.self, forKey: .delightsUserName)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                email = try container.decode(String.self, forKey: .email)
                
                
                
                
                do {
                    branchName = try container.decode(Bool.self, forKey: .branchName)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                accountNo = try container.decode(String.self, forKey: .accountNo)
                
                
                
                
                bankName = try container.decode(String.self, forKey: .bankName)
                
                
                
                
                modifiedOn = try container.decode(String.self, forKey: .modifiedOn)
                
                
                
                
                beneficiaryId = try container.decode(String.self, forKey: .beneficiaryId)
                
                
                
                
                ifscCode = try container.decode(String.self, forKey: .ifscCode)
                
                
                
                
                isActive = try container.decode(Bool.self, forKey: .isActive)
                
                
                
                
                accountHolder = try container.decode(String.self, forKey: .accountHolder)
                
                
                
                
                title = try container.decode(String.self, forKey: .title)
                
                
                
                
                do {
                    mobile = try container.decode(Bool.self, forKey: .mobile)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                id = try container.decode(Int.self, forKey: .id)
                
                
                
                
                do {
                    comment = try container.decode(Bool.self, forKey: .comment)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                transferMode = try container.decode(String.self, forKey: .transferMode)
                
                
                
                
                subtitle = try container.decode(String.self, forKey: .subtitle)
                
                
                
                
                createdOn = try container.decode(String.self, forKey: .createdOn)
                
                
                
                
                displayName = try container.decode(String.self, forKey: .displayName)
                
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(address, forKey: .address)
                
                
                
                
                try? container.encode(delightsUserName, forKey: .delightsUserName)
                
                
                
                
                try? container.encodeIfPresent(email, forKey: .email)
                
                
                
                
                try? container.encodeIfPresent(branchName, forKey: .branchName)
                
                
                
                
                try? container.encodeIfPresent(accountNo, forKey: .accountNo)
                
                
                
                
                try? container.encodeIfPresent(bankName, forKey: .bankName)
                
                
                
                
                try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)
                
                
                
                
                try? container.encodeIfPresent(beneficiaryId, forKey: .beneficiaryId)
                
                
                
                
                try? container.encodeIfPresent(ifscCode, forKey: .ifscCode)
                
                
                
                
                try? container.encodeIfPresent(isActive, forKey: .isActive)
                
                
                
                
                try? container.encodeIfPresent(accountHolder, forKey: .accountHolder)
                
                
                
                
                try? container.encodeIfPresent(title, forKey: .title)
                
                
                
                
                try? container.encodeIfPresent(mobile, forKey: .mobile)
                
                
                
                
                try? container.encodeIfPresent(id, forKey: .id)
                
                
                
                
                try? container.encodeIfPresent(comment, forKey: .comment)
                
                
                
                
                try? container.encodeIfPresent(transferMode, forKey: .transferMode)
                
                
                
                
                try? container.encodeIfPresent(subtitle, forKey: .subtitle)
                
                
                
                
                try? container.encodeIfPresent(createdOn, forKey: .createdOn)
                
                
                
                
                try? container.encodeIfPresent(displayName, forKey: .displayName)
                
                
            }
            
        }
        
        /*
            Model: OrderBeneficiaryResponse
            Used By: Payment
        */
        class OrderBeneficiaryResponse: Codable {
            
            public var beneficiaries: [OrderBeneficiaryDetails]?
            
            public var showBeneficiaryDetails: Bool?
            

            public enum CodingKeys: String, CodingKey {
                
                case beneficiaries = "beneficiaries"
                
                case showBeneficiaryDetails = "show_beneficiary_details"
                
            }

            public init(beneficiaries: [OrderBeneficiaryDetails]?, showBeneficiaryDetails: Bool?) {
                
                self.beneficiaries = beneficiaries
                
                self.showBeneficiaryDetails = showBeneficiaryDetails
                
            }

            public func duplicate() -> OrderBeneficiaryResponse {
                let dict = self.dictionary!
                let copy = OrderBeneficiaryResponse(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                do {
                    beneficiaries = try container.decode([OrderBeneficiaryDetails].self, forKey: .beneficiaries)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    showBeneficiaryDetails = try container.decode(Bool.self, forKey: .showBeneficiaryDetails)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encode(beneficiaries, forKey: .beneficiaries)
                
                
                
                
                try? container.encodeIfPresent(showBeneficiaryDetails, forKey: .showBeneficiaryDetails)
                
                
            }
            
        }
        
        /*
            Model: NotFoundResourceError
            Used By: Payment
        */
        class NotFoundResourceError: Codable {
            
            public var code: String
            
            public var success: Bool
            
            public var description: String
            

            public enum CodingKeys: String, CodingKey {
                
                case code = "code"
                
                case success = "success"
                
                case description = "description"
                
            }

            public init(code: String, description: String, success: Bool) {
                
                self.code = code
                
                self.success = success
                
                self.description = description
                
            }

            public func duplicate() -> NotFoundResourceError {
                let dict = self.dictionary!
                let copy = NotFoundResourceError(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                code = try container.decode(String.self, forKey: .code)
                
                
                
                
                success = try container.decode(Bool.self, forKey: .success)
                
                
                
                
                description = try container.decode(String.self, forKey: .description)
                
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(code, forKey: .code)
                
                
                
                
                try? container.encodeIfPresent(success, forKey: .success)
                
                
                
                
                try? container.encodeIfPresent(description, forKey: .description)
                
                
            }
            
        }
        
        /*
            Model: IfscCodeResponse
            Used By: Payment
        */
        class IfscCodeResponse: Codable {
            
            public var success: Bool?
            
            public var branchName: String
            
            public var bankName: String
            

            public enum CodingKeys: String, CodingKey {
                
                case success = "success"
                
                case branchName = "branch_name"
                
                case bankName = "bank_name"
                
            }

            public init(bankName: String, branchName: String, success: Bool?) {
                
                self.success = success
                
                self.branchName = branchName
                
                self.bankName = bankName
                
            }

            public func duplicate() -> IfscCodeResponse {
                let dict = self.dictionary!
                let copy = IfscCodeResponse(dictionary: dict)!
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
                
                
                
                branchName = try container.decode(String.self, forKey: .branchName)
                
                
                
                
                bankName = try container.decode(String.self, forKey: .bankName)
                
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(success, forKey: .success)
                
                
                
                
                try? container.encodeIfPresent(branchName, forKey: .branchName)
                
                
                
                
                try? container.encodeIfPresent(bankName, forKey: .bankName)
                
                
            }
            
        }
        
        /*
            Model: ErrorCodeDescription
            Used By: Payment
        */
        class ErrorCodeDescription: Codable {
            
            public var code: String
            
            public var success: Bool
            
            public var description: String
            

            public enum CodingKeys: String, CodingKey {
                
                case code = "code"
                
                case success = "success"
                
                case description = "description"
                
            }

            public init(code: String, description: String, success: Bool) {
                
                self.code = code
                
                self.success = success
                
                self.description = description
                
            }

            public func duplicate() -> ErrorCodeDescription {
                let dict = self.dictionary!
                let copy = ErrorCodeDescription(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                code = try container.decode(String.self, forKey: .code)
                
                
                
                
                success = try container.decode(Bool.self, forKey: .success)
                
                
                
                
                description = try container.decode(String.self, forKey: .description)
                
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(code, forKey: .code)
                
                
                
                
                try? container.encodeIfPresent(success, forKey: .success)
                
                
                
                
                try? container.encodeIfPresent(description, forKey: .description)
                
                
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
            
            public var isVerifiedFlag: Bool
            
            public var success: String
            
            public var description: String
            

            public enum CodingKeys: String, CodingKey {
                
                case isVerifiedFlag = "is_verified_flag"
                
                case success = "success"
                
                case description = "description"
                
            }

            public init(description: String, isVerifiedFlag: Bool, success: String) {
                
                self.isVerifiedFlag = isVerifiedFlag
                
                self.success = success
                
                self.description = description
                
            }

            public func duplicate() -> WrongOtpError {
                let dict = self.dictionary!
                let copy = WrongOtpError(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                isVerifiedFlag = try container.decode(Bool.self, forKey: .isVerifiedFlag)
                
                
                
                
                success = try container.decode(String.self, forKey: .success)
                
                
                
                
                description = try container.decode(String.self, forKey: .description)
                
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(isVerifiedFlag, forKey: .isVerifiedFlag)
                
                
                
                
                try? container.encodeIfPresent(success, forKey: .success)
                
                
                
                
                try? container.encodeIfPresent(description, forKey: .description)
                
                
            }
            
        }
        
        /*
            Model: BeneficiaryModeDetails
            Used By: Payment
        */
        class BeneficiaryModeDetails: Codable {
            
            public var comment: String?
            
            public var address: String?
            
            public var email: String
            
            public var bankName: String
            
            public var branchName: String
            
            public var ifscCode: String
            
            public var accountNo: String
            
            public var accountHolder: String
            
            public var wallet: String?
            
            public var mobile: String
            
            public var vpa: String?
            

            public enum CodingKeys: String, CodingKey {
                
                case comment = "comment"
                
                case address = "address"
                
                case email = "email"
                
                case bankName = "bank_name"
                
                case branchName = "branch_name"
                
                case ifscCode = "ifsc_code"
                
                case accountNo = "account_no"
                
                case accountHolder = "account_holder"
                
                case wallet = "wallet"
                
                case mobile = "mobile"
                
                case vpa = "vpa"
                
            }

            public init(accountHolder: String, accountNo: String, address: String?, bankName: String, branchName: String, comment: String?, email: String, ifscCode: String, mobile: String, vpa: String?, wallet: String?) {
                
                self.comment = comment
                
                self.address = address
                
                self.email = email
                
                self.bankName = bankName
                
                self.branchName = branchName
                
                self.ifscCode = ifscCode
                
                self.accountNo = accountNo
                
                self.accountHolder = accountHolder
                
                self.wallet = wallet
                
                self.mobile = mobile
                
                self.vpa = vpa
                
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
                
                
                
                do {
                    address = try container.decode(String.self, forKey: .address)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                email = try container.decode(String.self, forKey: .email)
                
                
                
                
                bankName = try container.decode(String.self, forKey: .bankName)
                
                
                
                
                branchName = try container.decode(String.self, forKey: .branchName)
                
                
                
                
                ifscCode = try container.decode(String.self, forKey: .ifscCode)
                
                
                
                
                accountNo = try container.decode(String.self, forKey: .accountNo)
                
                
                
                
                accountHolder = try container.decode(String.self, forKey: .accountHolder)
                
                
                
                
                do {
                    wallet = try container.decode(String.self, forKey: .wallet)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                mobile = try container.decode(String.self, forKey: .mobile)
                
                
                
                
                do {
                    vpa = try container.decode(String.self, forKey: .vpa)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(comment, forKey: .comment)
                
                
                
                
                try? container.encodeIfPresent(address, forKey: .address)
                
                
                
                
                try? container.encodeIfPresent(email, forKey: .email)
                
                
                
                
                try? container.encodeIfPresent(bankName, forKey: .bankName)
                
                
                
                
                try? container.encodeIfPresent(branchName, forKey: .branchName)
                
                
                
                
                try? container.encodeIfPresent(ifscCode, forKey: .ifscCode)
                
                
                
                
                try? container.encodeIfPresent(accountNo, forKey: .accountNo)
                
                
                
                
                try? container.encodeIfPresent(accountHolder, forKey: .accountHolder)
                
                
                
                
                try? container.encode(wallet, forKey: .wallet)
                
                
                
                
                try? container.encodeIfPresent(mobile, forKey: .mobile)
                
                
                
                
                try? container.encode(vpa, forKey: .vpa)
                
                
            }
            
        }
        
        /*
            Model: AddBeneficiaryDetailsRequest
            Used By: Payment
        */
        class AddBeneficiaryDetailsRequest: Codable {
            
            public var requestId: String?
            
            public var delights: Bool
            
            public var transferMode: String
            
            public var details: BeneficiaryModeDetails
            
            public var otp: String?
            
            public var shipmentId: String
            
            public var orderId: String
            

            public enum CodingKeys: String, CodingKey {
                
                case requestId = "request_id"
                
                case delights = "delights"
                
                case transferMode = "transfer_mode"
                
                case details = "details"
                
                case otp = "otp"
                
                case shipmentId = "shipment_id"
                
                case orderId = "order_id"
                
            }

            public init(delights: Bool, details: BeneficiaryModeDetails, orderId: String, otp: String?, requestId: String?, shipmentId: String, transferMode: String) {
                
                self.requestId = requestId
                
                self.delights = delights
                
                self.transferMode = transferMode
                
                self.details = details
                
                self.otp = otp
                
                self.shipmentId = shipmentId
                
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
                    requestId = try container.decode(String.self, forKey: .requestId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                delights = try container.decode(Bool.self, forKey: .delights)
                
                
                
                
                transferMode = try container.decode(String.self, forKey: .transferMode)
                
                
                
                
                details = try container.decode(BeneficiaryModeDetails.self, forKey: .details)
                
                
                
                
                do {
                    otp = try container.decode(String.self, forKey: .otp)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                shipmentId = try container.decode(String.self, forKey: .shipmentId)
                
                
                
                
                orderId = try container.decode(String.self, forKey: .orderId)
                
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(requestId, forKey: .requestId)
                
                
                
                
                try? container.encodeIfPresent(delights, forKey: .delights)
                
                
                
                
                try? container.encodeIfPresent(transferMode, forKey: .transferMode)
                
                
                
                
                try? container.encodeIfPresent(details, forKey: .details)
                
                
                
                
                try? container.encodeIfPresent(otp, forKey: .otp)
                
                
                
                
                try? container.encodeIfPresent(shipmentId, forKey: .shipmentId)
                
                
                
                
                try? container.encodeIfPresent(orderId, forKey: .orderId)
                
                
            }
            
        }
        
        /*
            Model: RefundAccountResponse
            Used By: Payment
        */
        class RefundAccountResponse: Codable {
            
            public var message: String
            
            public var isVerifiedFlag: Bool?
            
            public var success: Bool
            
            public var data: [String: Any]?
            

            public enum CodingKeys: String, CodingKey {
                
                case message = "message"
                
                case isVerifiedFlag = "is_verified_flag"
                
                case success = "success"
                
                case data = "data"
                
            }

            public init(data: [String: Any]?, isVerifiedFlag: Bool?, message: String, success: Bool) {
                
                self.message = message
                
                self.isVerifiedFlag = isVerifiedFlag
                
                self.success = success
                
                self.data = data
                
            }

            public func duplicate() -> RefundAccountResponse {
                let dict = self.dictionary!
                let copy = RefundAccountResponse(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                message = try container.decode(String.self, forKey: .message)
                
                
                
                
                do {
                    isVerifiedFlag = try container.decode(Bool.self, forKey: .isVerifiedFlag)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                success = try container.decode(Bool.self, forKey: .success)
                
                
                
                
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
                
                
                
                try? container.encodeIfPresent(message, forKey: .message)
                
                
                
                
                try? container.encodeIfPresent(isVerifiedFlag, forKey: .isVerifiedFlag)
                
                
                
                
                try? container.encodeIfPresent(success, forKey: .success)
                
                
                
                
                try? container.encodeIfPresent(data, forKey: .data)
                
                
            }
            
        }
        
        /*
            Model: BankDetailsForOTP
            Used By: Payment
        */
        class BankDetailsForOTP: Codable {
            
            public var accountNo: String
            
            public var branchName: String
            
            public var ifscCode: String
            
            public var bankName: String
            
            public var accountHolder: String
            

            public enum CodingKeys: String, CodingKey {
                
                case accountNo = "account_no"
                
                case branchName = "branch_name"
                
                case ifscCode = "ifsc_code"
                
                case bankName = "bank_name"
                
                case accountHolder = "account_holder"
                
            }

            public init(accountHolder: String, accountNo: String, bankName: String, branchName: String, ifscCode: String) {
                
                self.accountNo = accountNo
                
                self.branchName = branchName
                
                self.ifscCode = ifscCode
                
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
                
                
                accountNo = try container.decode(String.self, forKey: .accountNo)
                
                
                
                
                branchName = try container.decode(String.self, forKey: .branchName)
                
                
                
                
                ifscCode = try container.decode(String.self, forKey: .ifscCode)
                
                
                
                
                bankName = try container.decode(String.self, forKey: .bankName)
                
                
                
                
                accountHolder = try container.decode(String.self, forKey: .accountHolder)
                
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(accountNo, forKey: .accountNo)
                
                
                
                
                try? container.encodeIfPresent(branchName, forKey: .branchName)
                
                
                
                
                try? container.encodeIfPresent(ifscCode, forKey: .ifscCode)
                
                
                
                
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
            
            public var isVerifiedFlag: String
            
            public var success: Bool?
            
            public var requestId: String
            

            public enum CodingKeys: String, CodingKey {
                
                case isVerifiedFlag = "is_verified_flag"
                
                case success = "success"
                
                case requestId = "request_id"
                
            }

            public init(isVerifiedFlag: String, requestId: String, success: Bool?) {
                
                self.isVerifiedFlag = isVerifiedFlag
                
                self.success = success
                
                self.requestId = requestId
                
            }

            public func duplicate() -> WalletOtpResponse {
                let dict = self.dictionary!
                let copy = WalletOtpResponse(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                isVerifiedFlag = try container.decode(String.self, forKey: .isVerifiedFlag)
                
                
                
                
                do {
                    success = try container.decode(Bool.self, forKey: .success)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                requestId = try container.decode(String.self, forKey: .requestId)
                
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(isVerifiedFlag, forKey: .isVerifiedFlag)
                
                
                
                
                try? container.encodeIfPresent(success, forKey: .success)
                
                
                
                
                try? container.encodeIfPresent(requestId, forKey: .requestId)
                
                
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
            
            public var success: Bool?
            
            public var isBeneficiarySet: Bool
            

            public enum CodingKeys: String, CodingKey {
                
                case success = "success"
                
                case isBeneficiarySet = "is_beneficiary_set"
                
            }

            public init(isBeneficiarySet: Bool, success: Bool?) {
                
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
            
            public var value: Double
            
            public var formattedValue: String
            
            public var currency: String
            

            public enum CodingKeys: String, CodingKey {
                
                case value = "value"
                
                case formattedValue = "formatted_value"
                
                case currency = "currency"
                
            }

            public init(currency: String, formattedValue: String, value: Double) {
                
                self.value = value
                
                self.formattedValue = formattedValue
                
                self.currency = currency
                
            }

            public func duplicate() -> BalanceDetails {
                let dict = self.dictionary!
                let copy = BalanceDetails(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                value = try container.decode(Double.self, forKey: .value)
                
                
                
                
                formattedValue = try container.decode(String.self, forKey: .formattedValue)
                
                
                
                
                currency = try container.decode(String.self, forKey: .currency)
                
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(value, forKey: .value)
                
                
                
                
                try? container.encodeIfPresent(formattedValue, forKey: .formattedValue)
                
                
                
                
                try? container.encodeIfPresent(currency, forKey: .currency)
                
                
            }
            
        }
        
        /*
            Model: CreditSummary
            Used By: Payment
        */
        class CreditSummary: Codable {
            
            public var balance: BalanceDetails?
            
            public var merchantCustomerRefId: String
            
            public var status: String
            
            public var statusMessage: String
            

            public enum CodingKeys: String, CodingKey {
                
                case balance = "balance"
                
                case merchantCustomerRefId = "merchant_customer_ref_id"
                
                case status = "status"
                
                case statusMessage = "status_message"
                
            }

            public init(balance: BalanceDetails?, merchantCustomerRefId: String, status: String, statusMessage: String) {
                
                self.balance = balance
                
                self.merchantCustomerRefId = merchantCustomerRefId
                
                self.status = status
                
                self.statusMessage = statusMessage
                
            }

            public func duplicate() -> CreditSummary {
                let dict = self.dictionary!
                let copy = CreditSummary(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                do {
                    balance = try container.decode(BalanceDetails.self, forKey: .balance)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                merchantCustomerRefId = try container.decode(String.self, forKey: .merchantCustomerRefId)
                
                
                
                
                status = try container.decode(String.self, forKey: .status)
                
                
                
                
                statusMessage = try container.decode(String.self, forKey: .statusMessage)
                
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(balance, forKey: .balance)
                
                
                
                
                try? container.encodeIfPresent(merchantCustomerRefId, forKey: .merchantCustomerRefId)
                
                
                
                
                try? container.encodeIfPresent(status, forKey: .status)
                
                
                
                
                try? container.encodeIfPresent(statusMessage, forKey: .statusMessage)
                
                
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

            public init(data: CreditSummary?, success: Bool) {
                
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
            
            public var city: String
            
            public var addressline2: String?
            
            public var pincode: String
            
            public var landMark: String?
            
            public var state: String
            
            public var addressline1: String
            
            public var ownershipType: String?
            

            public enum CodingKeys: String, CodingKey {
                
                case city = "city"
                
                case addressline2 = "addressline2"
                
                case pincode = "pincode"
                
                case landMark = "land_mark"
                
                case state = "state"
                
                case addressline1 = "addressline1"
                
                case ownershipType = "ownership_type"
                
            }

            public init(addressline1: String, addressline2: String?, city: String, landMark: String?, ownershipType: String?, pincode: String, state: String) {
                
                self.city = city
                
                self.addressline2 = addressline2
                
                self.pincode = pincode
                
                self.landMark = landMark
                
                self.state = state
                
                self.addressline1 = addressline1
                
                self.ownershipType = ownershipType
                
            }

            public func duplicate() -> KYCAddress {
                let dict = self.dictionary!
                let copy = KYCAddress(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                city = try container.decode(String.self, forKey: .city)
                
                
                
                
                do {
                    addressline2 = try container.decode(String.self, forKey: .addressline2)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                pincode = try container.decode(String.self, forKey: .pincode)
                
                
                
                
                do {
                    landMark = try container.decode(String.self, forKey: .landMark)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                state = try container.decode(String.self, forKey: .state)
                
                
                
                
                addressline1 = try container.decode(String.self, forKey: .addressline1)
                
                
                
                
                do {
                    ownershipType = try container.decode(String.self, forKey: .ownershipType)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(city, forKey: .city)
                
                
                
                
                try? container.encode(addressline2, forKey: .addressline2)
                
                
                
                
                try? container.encodeIfPresent(pincode, forKey: .pincode)
                
                
                
                
                try? container.encode(landMark, forKey: .landMark)
                
                
                
                
                try? container.encodeIfPresent(state, forKey: .state)
                
                
                
                
                try? container.encodeIfPresent(addressline1, forKey: .addressline1)
                
                
                
                
                try? container.encode(ownershipType, forKey: .ownershipType)
                
                
            }
            
        }
        
        /*
            Model: BusinessDetails
            Used By: Payment
        */
        class BusinessDetails: Codable {
            
            public var vintage: String?
            
            public var fssai: String?
            
            public var address: KYCAddress?
            
            public var businessOwnershipType: String?
            
            public var pan: String?
            
            public var fda: String?
            
            public var shopAndEstablishment: [String: Any]?
            
            public var businessType: String?
            
            public var entityType: String?
            
            public var name: String?
            
            public var gstin: String?
            

            public enum CodingKeys: String, CodingKey {
                
                case vintage = "vintage"
                
                case fssai = "fssai"
                
                case address = "address"
                
                case businessOwnershipType = "business_ownership_type"
                
                case pan = "pan"
                
                case fda = "fda"
                
                case shopAndEstablishment = "shop_and_establishment"
                
                case businessType = "business_type"
                
                case entityType = "entity_type"
                
                case name = "name"
                
                case gstin = "gstin"
                
            }

            public init(address: KYCAddress?, businessOwnershipType: String?, businessType: String?, entityType: String?, fda: String?, fssai: String?, gstin: String?, name: String?, pan: String?, shopAndEstablishment: [String: Any]?, vintage: String?) {
                
                self.vintage = vintage
                
                self.fssai = fssai
                
                self.address = address
                
                self.businessOwnershipType = businessOwnershipType
                
                self.pan = pan
                
                self.fda = fda
                
                self.shopAndEstablishment = shopAndEstablishment
                
                self.businessType = businessType
                
                self.entityType = entityType
                
                self.name = name
                
                self.gstin = gstin
                
            }

            public func duplicate() -> BusinessDetails {
                let dict = self.dictionary!
                let copy = BusinessDetails(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                do {
                    vintage = try container.decode(String.self, forKey: .vintage)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    fssai = try container.decode(String.self, forKey: .fssai)
                
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
                    businessOwnershipType = try container.decode(String.self, forKey: .businessOwnershipType)
                
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
                
                
                
                do {
                    fda = try container.decode(String.self, forKey: .fda)
                
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
                    businessType = try container.decode(String.self, forKey: .businessType)
                
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
                    name = try container.decode(String.self, forKey: .name)
                
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
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encode(vintage, forKey: .vintage)
                
                
                
                
                try? container.encode(fssai, forKey: .fssai)
                
                
                
                
                try? container.encodeIfPresent(address, forKey: .address)
                
                
                
                
                try? container.encode(businessOwnershipType, forKey: .businessOwnershipType)
                
                
                
                
                try? container.encode(pan, forKey: .pan)
                
                
                
                
                try? container.encode(fda, forKey: .fda)
                
                
                
                
                try? container.encodeIfPresent(shopAndEstablishment, forKey: .shopAndEstablishment)
                
                
                
                
                try? container.encode(businessType, forKey: .businessType)
                
                
                
                
                try? container.encode(entityType, forKey: .entityType)
                
                
                
                
                try? container.encode(name, forKey: .name)
                
                
                
                
                try? container.encode(gstin, forKey: .gstin)
                
                
            }
            
        }
        
        /*
            Model: DeviceDetails
            Used By: Payment
        */
        class DeviceDetails: Codable {
            
            public var deviceModel: String?
            
            public var identificationNumber: String?
            
            public var deviceMake: String?
            
            public var identifierType: String?
            
            public var osVersion: String?
            
            public var os: String?
            
            public var deviceType: String?
            

            public enum CodingKeys: String, CodingKey {
                
                case deviceModel = "device_model"
                
                case identificationNumber = "identification_number"
                
                case deviceMake = "device_make"
                
                case identifierType = "identifier_type"
                
                case osVersion = "os_version"
                
                case os = "os"
                
                case deviceType = "device_type"
                
            }

            public init(deviceMake: String?, deviceModel: String?, deviceType: String?, identificationNumber: String?, identifierType: String?, os: String?, osVersion: String?) {
                
                self.deviceModel = deviceModel
                
                self.identificationNumber = identificationNumber
                
                self.deviceMake = deviceMake
                
                self.identifierType = identifierType
                
                self.osVersion = osVersion
                
                self.os = os
                
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
                    identificationNumber = try container.decode(String.self, forKey: .identificationNumber)
                
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
                    osVersion = try container.decode(String.self, forKey: .osVersion)
                
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
                
                
                
                
                try? container.encode(identificationNumber, forKey: .identificationNumber)
                
                
                
                
                try? container.encode(deviceMake, forKey: .deviceMake)
                
                
                
                
                try? container.encode(identifierType, forKey: .identifierType)
                
                
                
                
                try? container.encode(osVersion, forKey: .osVersion)
                
                
                
                
                try? container.encode(os, forKey: .os)
                
                
                
                
                try? container.encode(deviceType, forKey: .deviceType)
                
                
            }
            
        }
        
        /*
            Model: MarketplaceInfo
            Used By: Payment
        */
        class MarketplaceInfo: Codable {
            
            public var name: String
            
            public var dateOfJoining: String?
            
            public var membershipId: String
            

            public enum CodingKeys: String, CodingKey {
                
                case name = "name"
                
                case dateOfJoining = "date_of_joining"
                
                case membershipId = "membership_id"
                
            }

            public init(dateOfJoining: String?, membershipId: String, name: String) {
                
                self.name = name
                
                self.dateOfJoining = dateOfJoining
                
                self.membershipId = membershipId
                
            }

            public func duplicate() -> MarketplaceInfo {
                let dict = self.dictionary!
                let copy = MarketplaceInfo(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                name = try container.decode(String.self, forKey: .name)
                
                
                
                
                do {
                    dateOfJoining = try container.decode(String.self, forKey: .dateOfJoining)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                membershipId = try container.decode(String.self, forKey: .membershipId)
                
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(name, forKey: .name)
                
                
                
                
                try? container.encode(dateOfJoining, forKey: .dateOfJoining)
                
                
                
                
                try? container.encodeIfPresent(membershipId, forKey: .membershipId)
                
                
            }
            
        }
        
        /*
            Model: UserPersonalInfoInDetails
            Used By: Payment
        */
        class UserPersonalInfoInDetails: Codable {
            
            public var gender: String?
            
            public var passport: String?
            
            public var pan: String?
            
            public var emailVerified: Bool
            
            public var email: String
            
            public var drivingLicense: String?
            
            public var lastName: String?
            
            public var mobileVerified: Bool
            
            public var fathersName: String?
            
            public var phone: String
            
            public var dob: String
            
            public var addressAsPerId: KYCAddress
            
            public var mothersName: String?
            
            public var firstName: String
            
            public var voterId: String?
            
            public var middleName: String?
            

            public enum CodingKeys: String, CodingKey {
                
                case gender = "gender"
                
                case passport = "passport"
                
                case pan = "pan"
                
                case emailVerified = "email_verified"
                
                case email = "email"
                
                case drivingLicense = "driving_license"
                
                case lastName = "last_name"
                
                case mobileVerified = "mobile_verified"
                
                case fathersName = "fathers_name"
                
                case phone = "phone"
                
                case dob = "dob"
                
                case addressAsPerId = "address_as_per_id"
                
                case mothersName = "mothers_name"
                
                case firstName = "first_name"
                
                case voterId = "voter_id"
                
                case middleName = "middle_name"
                
            }

            public init(addressAsPerId: KYCAddress, dob: String, drivingLicense: String?, email: String, emailVerified: Bool, fathersName: String?, firstName: String, gender: String?, lastName: String?, middleName: String?, mobileVerified: Bool, mothersName: String?, pan: String?, passport: String?, phone: String, voterId: String?) {
                
                self.gender = gender
                
                self.passport = passport
                
                self.pan = pan
                
                self.emailVerified = emailVerified
                
                self.email = email
                
                self.drivingLicense = drivingLicense
                
                self.lastName = lastName
                
                self.mobileVerified = mobileVerified
                
                self.fathersName = fathersName
                
                self.phone = phone
                
                self.dob = dob
                
                self.addressAsPerId = addressAsPerId
                
                self.mothersName = mothersName
                
                self.firstName = firstName
                
                self.voterId = voterId
                
                self.middleName = middleName
                
            }

            public func duplicate() -> UserPersonalInfoInDetails {
                let dict = self.dictionary!
                let copy = UserPersonalInfoInDetails(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                do {
                    gender = try container.decode(String.self, forKey: .gender)
                
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
                
                
                
                do {
                    pan = try container.decode(String.self, forKey: .pan)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                emailVerified = try container.decode(Bool.self, forKey: .emailVerified)
                
                
                
                
                email = try container.decode(String.self, forKey: .email)
                
                
                
                
                do {
                    drivingLicense = try container.decode(String.self, forKey: .drivingLicense)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    lastName = try container.decode(String.self, forKey: .lastName)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                mobileVerified = try container.decode(Bool.self, forKey: .mobileVerified)
                
                
                
                
                do {
                    fathersName = try container.decode(String.self, forKey: .fathersName)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                phone = try container.decode(String.self, forKey: .phone)
                
                
                
                
                dob = try container.decode(String.self, forKey: .dob)
                
                
                
                
                addressAsPerId = try container.decode(KYCAddress.self, forKey: .addressAsPerId)
                
                
                
                
                do {
                    mothersName = try container.decode(String.self, forKey: .mothersName)
                
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
                    middleName = try container.decode(String.self, forKey: .middleName)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encode(gender, forKey: .gender)
                
                
                
                
                try? container.encode(passport, forKey: .passport)
                
                
                
                
                try? container.encode(pan, forKey: .pan)
                
                
                
                
                try? container.encodeIfPresent(emailVerified, forKey: .emailVerified)
                
                
                
                
                try? container.encodeIfPresent(email, forKey: .email)
                
                
                
                
                try? container.encode(drivingLicense, forKey: .drivingLicense)
                
                
                
                
                try? container.encode(lastName, forKey: .lastName)
                
                
                
                
                try? container.encodeIfPresent(mobileVerified, forKey: .mobileVerified)
                
                
                
                
                try? container.encode(fathersName, forKey: .fathersName)
                
                
                
                
                try? container.encodeIfPresent(phone, forKey: .phone)
                
                
                
                
                try? container.encode(dob, forKey: .dob)
                
                
                
                
                try? container.encodeIfPresent(addressAsPerId, forKey: .addressAsPerId)
                
                
                
                
                try? container.encode(mothersName, forKey: .mothersName)
                
                
                
                
                try? container.encodeIfPresent(firstName, forKey: .firstName)
                
                
                
                
                try? container.encode(voterId, forKey: .voterId)
                
                
                
                
                try? container.encode(middleName, forKey: .middleName)
                
                
            }
            
        }
        
        /*
            Model: CustomerOnboardingRequest
            Used By: Payment
        */
        class CustomerOnboardingRequest: Codable {
            
            public var businessInfo: BusinessDetails?
            
            public var device: DeviceDetails?
            
            public var marketplaceInfo: MarketplaceInfo?
            
            public var aggregator: String
            
            public var source: String
            
            public var personalInfo: UserPersonalInfoInDetails
            

            public enum CodingKeys: String, CodingKey {
                
                case businessInfo = "business_info"
                
                case device = "device"
                
                case marketplaceInfo = "marketplace_info"
                
                case aggregator = "aggregator"
                
                case source = "source"
                
                case personalInfo = "personal_info"
                
            }

            public init(aggregator: String, businessInfo: BusinessDetails?, device: DeviceDetails?, marketplaceInfo: MarketplaceInfo?, personalInfo: UserPersonalInfoInDetails, source: String) {
                
                self.businessInfo = businessInfo
                
                self.device = device
                
                self.marketplaceInfo = marketplaceInfo
                
                self.aggregator = aggregator
                
                self.source = source
                
                self.personalInfo = personalInfo
                
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
                
                
                
                do {
                    device = try container.decode(DeviceDetails.self, forKey: .device)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    marketplaceInfo = try container.decode(MarketplaceInfo.self, forKey: .marketplaceInfo)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                aggregator = try container.decode(String.self, forKey: .aggregator)
                
                
                
                
                source = try container.decode(String.self, forKey: .source)
                
                
                
                
                personalInfo = try container.decode(UserPersonalInfoInDetails.self, forKey: .personalInfo)
                
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(businessInfo, forKey: .businessInfo)
                
                
                
                
                try? container.encodeIfPresent(device, forKey: .device)
                
                
                
                
                try? container.encodeIfPresent(marketplaceInfo, forKey: .marketplaceInfo)
                
                
                
                
                try? container.encodeIfPresent(aggregator, forKey: .aggregator)
                
                
                
                
                try? container.encodeIfPresent(source, forKey: .source)
                
                
                
                
                try? container.encodeIfPresent(personalInfo, forKey: .personalInfo)
                
                
            }
            
        }
        
        /*
            Model: OnboardSummary
            Used By: Payment
        */
        class OnboardSummary: Codable {
            
            public var session: [String: Any]
            
            public var redirectUrl: String
            
            public var status: Bool
            

            public enum CodingKeys: String, CodingKey {
                
                case session = "session"
                
                case redirectUrl = "redirect_url"
                
                case status = "status"
                
            }

            public init(redirectUrl: String, session: [String: Any], status: Bool) {
                
                self.session = session
                
                self.redirectUrl = redirectUrl
                
                self.status = status
                
            }

            public func duplicate() -> OnboardSummary {
                let dict = self.dictionary!
                let copy = OnboardSummary(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                session = try container.decode([String: Any].self, forKey: .session)
                
                
                
                
                redirectUrl = try container.decode(String.self, forKey: .redirectUrl)
                
                
                
                
                status = try container.decode(Bool.self, forKey: .status)
                
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(session, forKey: .session)
                
                
                
                
                try? container.encodeIfPresent(redirectUrl, forKey: .redirectUrl)
                
                
                
                
                try? container.encodeIfPresent(status, forKey: .status)
                
                
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
