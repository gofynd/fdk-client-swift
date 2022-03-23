import Foundation


import Foundation
public extension ApplicationClient {
  
        /*
            Model: AggregatorConfigDetail
            Used By: Payment
        */
        class AggregatorConfigDetail: Codable {
            
            public var api: String?
            
            public var secret: String
            
            public var configType: String
            
            public var userId: String?
            
            public var verifyApi: String?
            
            public var merchantId: String?
            
            public var key: String
            
            public var pin: String?
            
            public var merchantKey: String?
            
            public var sdk: Bool?
            

            public enum CodingKeys: String, CodingKey {
                
                case api = "api"
                
                case secret = "secret"
                
                case configType = "config_type"
                
                case userId = "user_id"
                
                case verifyApi = "verify_api"
                
                case merchantId = "merchant_id"
                
                case key = "key"
                
                case pin = "pin"
                
                case merchantKey = "merchant_key"
                
                case sdk = "sdk"
                
            }

            public init(api: String?, configType: String, key: String, merchantId: String?, merchantKey: String?, pin: String?, sdk: Bool?, secret: String, userId: String?, verifyApi: String?) {
                
                self.api = api
                
                self.secret = secret
                
                self.configType = configType
                
                self.userId = userId
                
                self.verifyApi = verifyApi
                
                self.merchantId = merchantId
                
                self.key = key
                
                self.pin = pin
                
                self.merchantKey = merchantKey
                
                self.sdk = sdk
                
            }

            public func duplicate() -> AggregatorConfigDetail {
                let dict = self.dictionary!
                let copy = AggregatorConfigDetail(dictionary: dict)!
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
                
                
                
                secret = try container.decode(String.self, forKey: .secret)
                
                
                
                
                configType = try container.decode(String.self, forKey: .configType)
                
                
                
                
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
                
                
                
                key = try container.decode(String.self, forKey: .key)
                
                
                
                
                do {
                    pin = try container.decode(String.self, forKey: .pin)
                
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
                    sdk = try container.decode(Bool.self, forKey: .sdk)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encode(api, forKey: .api)
                
                
                
                
                try? container.encodeIfPresent(secret, forKey: .secret)
                
                
                
                
                try? container.encodeIfPresent(configType, forKey: .configType)
                
                
                
                
                try? container.encode(userId, forKey: .userId)
                
                
                
                
                try? container.encode(verifyApi, forKey: .verifyApi)
                
                
                
                
                try? container.encode(merchantId, forKey: .merchantId)
                
                
                
                
                try? container.encodeIfPresent(key, forKey: .key)
                
                
                
                
                try? container.encode(pin, forKey: .pin)
                
                
                
                
                try? container.encode(merchantKey, forKey: .merchantKey)
                
                
                
                
                try? container.encode(sdk, forKey: .sdk)
                
                
            }
            
        }
        
        /*
            Model: AggregatorsConfigDetailResponse
            Used By: Payment
        */
        class AggregatorsConfigDetailResponse: Codable {
            
            public var success: Bool
            
            public var simpl: AggregatorConfigDetail?
            
            public var juspay: AggregatorConfigDetail?
            
            public var rupifi: AggregatorConfigDetail?
            
            public var mswipe: AggregatorConfigDetail?
            
            public var env: String
            
            public var payumoney: AggregatorConfigDetail?
            
            public var razorpay: AggregatorConfigDetail?
            
            public var stripe: AggregatorConfigDetail?
            
            public var ccavenue: AggregatorConfigDetail?
            

            public enum CodingKeys: String, CodingKey {
                
                case success = "success"
                
                case simpl = "simpl"
                
                case juspay = "juspay"
                
                case rupifi = "rupifi"
                
                case mswipe = "mswipe"
                
                case env = "env"
                
                case payumoney = "payumoney"
                
                case razorpay = "razorpay"
                
                case stripe = "stripe"
                
                case ccavenue = "ccavenue"
                
            }

            public init(ccavenue: AggregatorConfigDetail?, env: String, juspay: AggregatorConfigDetail?, mswipe: AggregatorConfigDetail?, payumoney: AggregatorConfigDetail?, razorpay: AggregatorConfigDetail?, rupifi: AggregatorConfigDetail?, simpl: AggregatorConfigDetail?, stripe: AggregatorConfigDetail?, success: Bool) {
                
                self.success = success
                
                self.simpl = simpl
                
                self.juspay = juspay
                
                self.rupifi = rupifi
                
                self.mswipe = mswipe
                
                self.env = env
                
                self.payumoney = payumoney
                
                self.razorpay = razorpay
                
                self.stripe = stripe
                
                self.ccavenue = ccavenue
                
            }

            public func duplicate() -> AggregatorsConfigDetailResponse {
                let dict = self.dictionary!
                let copy = AggregatorsConfigDetailResponse(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                success = try container.decode(Bool.self, forKey: .success)
                
                
                
                
                do {
                    simpl = try container.decode(AggregatorConfigDetail.self, forKey: .simpl)
                
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
                    rupifi = try container.decode(AggregatorConfigDetail.self, forKey: .rupifi)
                
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
                
                
                
                env = try container.decode(String.self, forKey: .env)
                
                
                
                
                do {
                    payumoney = try container.decode(AggregatorConfigDetail.self, forKey: .payumoney)
                
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
                
                
                
                do {
                    stripe = try container.decode(AggregatorConfigDetail.self, forKey: .stripe)
                
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
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(success, forKey: .success)
                
                
                
                
                try? container.encodeIfPresent(simpl, forKey: .simpl)
                
                
                
                
                try? container.encodeIfPresent(juspay, forKey: .juspay)
                
                
                
                
                try? container.encodeIfPresent(rupifi, forKey: .rupifi)
                
                
                
                
                try? container.encodeIfPresent(mswipe, forKey: .mswipe)
                
                
                
                
                try? container.encodeIfPresent(env, forKey: .env)
                
                
                
                
                try? container.encodeIfPresent(payumoney, forKey: .payumoney)
                
                
                
                
                try? container.encodeIfPresent(razorpay, forKey: .razorpay)
                
                
                
                
                try? container.encodeIfPresent(stripe, forKey: .stripe)
                
                
                
                
                try? container.encodeIfPresent(ccavenue, forKey: .ccavenue)
                
                
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
            
            public var refresh: Bool?
            
            public var nameOnCard: String?
            
            public var cardId: String
            
            public var nickname: String?
            

            public enum CodingKeys: String, CodingKey {
                
                case refresh = "refresh"
                
                case nameOnCard = "name_on_card"
                
                case cardId = "card_id"
                
                case nickname = "nickname"
                
            }

            public init(cardId: String, nameOnCard: String?, nickname: String?, refresh: Bool?) {
                
                self.refresh = refresh
                
                self.nameOnCard = nameOnCard
                
                self.cardId = cardId
                
                self.nickname = nickname
                
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
                
                
                
                cardId = try container.decode(String.self, forKey: .cardId)
                
                
                
                
                do {
                    nickname = try container.decode(String.self, forKey: .nickname)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encode(refresh, forKey: .refresh)
                
                
                
                
                try? container.encodeIfPresent(nameOnCard, forKey: .nameOnCard)
                
                
                
                
                try? container.encode(cardId, forKey: .cardId)
                
                
                
                
                try? container.encodeIfPresent(nickname, forKey: .nickname)
                
                
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

            public init(data: [String: Any], message: String?, success: Bool) {
                
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
            
            public var success: Bool
            
            public var message: String
            
            public var cards: CardPaymentGateway
            

            public enum CodingKeys: String, CodingKey {
                
                case success = "success"
                
                case message = "message"
                
                case cards = "cards"
                
            }

            public init(cards: CardPaymentGateway, message: String, success: Bool) {
                
                self.success = success
                
                self.message = message
                
                self.cards = cards
                
            }

            public func duplicate() -> ActiveCardPaymentGatewayResponse {
                let dict = self.dictionary!
                let copy = ActiveCardPaymentGatewayResponse(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                success = try container.decode(Bool.self, forKey: .success)
                
                
                
                
                message = try container.decode(String.self, forKey: .message)
                
                
                
                
                cards = try container.decode(CardPaymentGateway.self, forKey: .cards)
                
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(success, forKey: .success)
                
                
                
                
                try? container.encodeIfPresent(message, forKey: .message)
                
                
                
                
                try? container.encodeIfPresent(cards, forKey: .cards)
                
                
            }
            
        }
        
        /*
            Model: Card
            Used By: Payment
        */
        class Card: Codable {
            
            public var cardIssuer: String?
            
            public var cardId: String?
            
            public var cardBrand: String?
            
            public var expMonth: Int?
            
            public var cardType: String?
            
            public var aggregatorName: String
            
            public var cardName: String?
            
            public var expired: Bool?
            
            public var cardIsin: String?
            
            public var cardFingerprint: String?
            
            public var nickname: String?
            
            public var cardNumber: String?
            
            public var cardBrandImage: String?
            
            public var cardReference: String?
            
            public var cardToken: String?
            
            public var expYear: Int?
            

            public enum CodingKeys: String, CodingKey {
                
                case cardIssuer = "card_issuer"
                
                case cardId = "card_id"
                
                case cardBrand = "card_brand"
                
                case expMonth = "exp_month"
                
                case cardType = "card_type"
                
                case aggregatorName = "aggregator_name"
                
                case cardName = "card_name"
                
                case expired = "expired"
                
                case cardIsin = "card_isin"
                
                case cardFingerprint = "card_fingerprint"
                
                case nickname = "nickname"
                
                case cardNumber = "card_number"
                
                case cardBrandImage = "card_brand_image"
                
                case cardReference = "card_reference"
                
                case cardToken = "card_token"
                
                case expYear = "exp_year"
                
            }

            public init(aggregatorName: String, cardBrand: String?, cardBrandImage: String?, cardFingerprint: String?, cardId: String?, cardIsin: String?, cardIssuer: String?, cardName: String?, cardNumber: String?, cardReference: String?, cardToken: String?, cardType: String?, expired: Bool?, expMonth: Int?, expYear: Int?, nickname: String?) {
                
                self.cardIssuer = cardIssuer
                
                self.cardId = cardId
                
                self.cardBrand = cardBrand
                
                self.expMonth = expMonth
                
                self.cardType = cardType
                
                self.aggregatorName = aggregatorName
                
                self.cardName = cardName
                
                self.expired = expired
                
                self.cardIsin = cardIsin
                
                self.cardFingerprint = cardFingerprint
                
                self.nickname = nickname
                
                self.cardNumber = cardNumber
                
                self.cardBrandImage = cardBrandImage
                
                self.cardReference = cardReference
                
                self.cardToken = cardToken
                
                self.expYear = expYear
                
            }

            public func duplicate() -> Card {
                let dict = self.dictionary!
                let copy = Card(dictionary: dict)!
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
                    cardId = try container.decode(String.self, forKey: .cardId)
                
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
                
                
                
                do {
                    cardType = try container.decode(String.self, forKey: .cardType)
                
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
                    expired = try container.decode(Bool.self, forKey: .expired)
                
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
                    cardFingerprint = try container.decode(String.self, forKey: .cardFingerprint)
                
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
                    cardNumber = try container.decode(String.self, forKey: .cardNumber)
                
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
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encode(cardIssuer, forKey: .cardIssuer)
                
                
                
                
                try? container.encode(cardId, forKey: .cardId)
                
                
                
                
                try? container.encode(cardBrand, forKey: .cardBrand)
                
                
                
                
                try? container.encode(expMonth, forKey: .expMonth)
                
                
                
                
                try? container.encode(cardType, forKey: .cardType)
                
                
                
                
                try? container.encodeIfPresent(aggregatorName, forKey: .aggregatorName)
                
                
                
                
                try? container.encode(cardName, forKey: .cardName)
                
                
                
                
                try? container.encode(expired, forKey: .expired)
                
                
                
                
                try? container.encode(cardIsin, forKey: .cardIsin)
                
                
                
                
                try? container.encode(cardFingerprint, forKey: .cardFingerprint)
                
                
                
                
                try? container.encode(nickname, forKey: .nickname)
                
                
                
                
                try? container.encode(cardNumber, forKey: .cardNumber)
                
                
                
                
                try? container.encode(cardBrandImage, forKey: .cardBrandImage)
                
                
                
                
                try? container.encode(cardReference, forKey: .cardReference)
                
                
                
                
                try? container.encode(cardToken, forKey: .cardToken)
                
                
                
                
                try? container.encode(expYear, forKey: .expYear)
                
                
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

            public init(data: [Card]?, message: String, success: Bool) {
                
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

            public init(message: String?, success: Bool) {
                
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
            
            public var merchantParams: [String: Any]
            
            public var payload: String
            
            public var phoneNumber: String
            
            public var transactionAmountInPaise: Int
            
            public var aggregator: String
            

            public enum CodingKeys: String, CodingKey {
                
                case merchantParams = "merchant_params"
                
                case payload = "payload"
                
                case phoneNumber = "phone_number"
                
                case transactionAmountInPaise = "transaction_amount_in_paise"
                
                case aggregator = "aggregator"
                
            }

            public init(aggregator: String, merchantParams: [String: Any], payload: String, phoneNumber: String, transactionAmountInPaise: Int) {
                
                self.merchantParams = merchantParams
                
                self.payload = payload
                
                self.phoneNumber = phoneNumber
                
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
                
                
                merchantParams = try container.decode([String: Any].self, forKey: .merchantParams)
                
                
                
                
                payload = try container.decode(String.self, forKey: .payload)
                
                
                
                
                phoneNumber = try container.decode(String.self, forKey: .phoneNumber)
                
                
                
                
                transactionAmountInPaise = try container.decode(Int.self, forKey: .transactionAmountInPaise)
                
                
                
                
                aggregator = try container.decode(String.self, forKey: .aggregator)
                
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(merchantParams, forKey: .merchantParams)
                
                
                
                
                try? container.encode(payload, forKey: .payload)
                
                
                
                
                try? container.encodeIfPresent(phoneNumber, forKey: .phoneNumber)
                
                
                
                
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
            
            public var orderId: String
            
            public var transactionToken: String?
            
            public var verified: Bool?
            
            public var amount: Int
            
            public var aggregator: String
            

            public enum CodingKeys: String, CodingKey {
                
                case orderId = "order_id"
                
                case transactionToken = "transaction_token"
                
                case verified = "verified"
                
                case amount = "amount"
                
                case aggregator = "aggregator"
                
            }

            public init(aggregator: String, amount: Int, orderId: String, transactionToken: String?, verified: Bool?) {
                
                self.orderId = orderId
                
                self.transactionToken = transactionToken
                
                self.verified = verified
                
                self.amount = amount
                
                self.aggregator = aggregator
                
            }

            public func duplicate() -> ChargeCustomerRequest {
                let dict = self.dictionary!
                let copy = ChargeCustomerRequest(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
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
                
                
                
                amount = try container.decode(Int.self, forKey: .amount)
                
                
                
                
                aggregator = try container.decode(String.self, forKey: .aggregator)
                
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(orderId, forKey: .orderId)
                
                
                
                
                try? container.encode(transactionToken, forKey: .transactionToken)
                
                
                
                
                try? container.encode(verified, forKey: .verified)
                
                
                
                
                try? container.encode(amount, forKey: .amount)
                
                
                
                
                try? container.encodeIfPresent(aggregator, forKey: .aggregator)
                
                
            }
            
        }
        
        /*
            Model: ChargeCustomerResponse
            Used By: Payment
        */
        class ChargeCustomerResponse: Codable {
            
            public var success: Bool
            
            public var orderId: String
            
            public var deliveryAddressId: String?
            
            public var cartId: String?
            
            public var message: String
            
            public var status: String
            
            public var aggregator: String
            

            public enum CodingKeys: String, CodingKey {
                
                case success = "success"
                
                case orderId = "order_id"
                
                case deliveryAddressId = "delivery_address_id"
                
                case cartId = "cart_id"
                
                case message = "message"
                
                case status = "status"
                
                case aggregator = "aggregator"
                
            }

            public init(aggregator: String, cartId: String?, deliveryAddressId: String?, message: String, orderId: String, status: String, success: Bool) {
                
                self.success = success
                
                self.orderId = orderId
                
                self.deliveryAddressId = deliveryAddressId
                
                self.cartId = cartId
                
                self.message = message
                
                self.status = status
                
                self.aggregator = aggregator
                
            }

            public func duplicate() -> ChargeCustomerResponse {
                let dict = self.dictionary!
                let copy = ChargeCustomerResponse(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                success = try container.decode(Bool.self, forKey: .success)
                
                
                
                
                orderId = try container.decode(String.self, forKey: .orderId)
                
                
                
                
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
                
                
                
                message = try container.decode(String.self, forKey: .message)
                
                
                
                
                status = try container.decode(String.self, forKey: .status)
                
                
                
                
                aggregator = try container.decode(String.self, forKey: .aggregator)
                
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(success, forKey: .success)
                
                
                
                
                try? container.encodeIfPresent(orderId, forKey: .orderId)
                
                
                
                
                try? container.encode(deliveryAddressId, forKey: .deliveryAddressId)
                
                
                
                
                try? container.encode(cartId, forKey: .cartId)
                
                
                
                
                try? container.encodeIfPresent(message, forKey: .message)
                
                
                
                
                try? container.encodeIfPresent(status, forKey: .status)
                
                
                
                
                try? container.encodeIfPresent(aggregator, forKey: .aggregator)
                
                
            }
            
        }
        
        /*
            Model: PaymentInitializationRequest
            Used By: Payment
        */
        class PaymentInitializationRequest: Codable {
            
            public var merchantOrderId: String
            
            public var orderId: String
            
            public var timeout: Int?
            
            public var vpa: String?
            
            public var method: String
            
            public var contact: String
            
            public var currency: String
            
            public var razorpayPaymentId: String?
            
            public var email: String
            
            public var amount: Int
            
            public var customerId: String
            
            public var aggregator: String
            

            public enum CodingKeys: String, CodingKey {
                
                case merchantOrderId = "merchant_order_id"
                
                case orderId = "order_id"
                
                case timeout = "timeout"
                
                case vpa = "vpa"
                
                case method = "method"
                
                case contact = "contact"
                
                case currency = "currency"
                
                case razorpayPaymentId = "razorpay_payment_id"
                
                case email = "email"
                
                case amount = "amount"
                
                case customerId = "customer_id"
                
                case aggregator = "aggregator"
                
            }

            public init(aggregator: String, amount: Int, contact: String, currency: String, customerId: String, email: String, merchantOrderId: String, method: String, orderId: String, razorpayPaymentId: String?, timeout: Int?, vpa: String?) {
                
                self.merchantOrderId = merchantOrderId
                
                self.orderId = orderId
                
                self.timeout = timeout
                
                self.vpa = vpa
                
                self.method = method
                
                self.contact = contact
                
                self.currency = currency
                
                self.razorpayPaymentId = razorpayPaymentId
                
                self.email = email
                
                self.amount = amount
                
                self.customerId = customerId
                
                self.aggregator = aggregator
                
            }

            public func duplicate() -> PaymentInitializationRequest {
                let dict = self.dictionary!
                let copy = PaymentInitializationRequest(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                merchantOrderId = try container.decode(String.self, forKey: .merchantOrderId)
                
                
                
                
                orderId = try container.decode(String.self, forKey: .orderId)
                
                
                
                
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
                
                
                
                method = try container.decode(String.self, forKey: .method)
                
                
                
                
                contact = try container.decode(String.self, forKey: .contact)
                
                
                
                
                currency = try container.decode(String.self, forKey: .currency)
                
                
                
                
                do {
                    razorpayPaymentId = try container.decode(String.self, forKey: .razorpayPaymentId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                email = try container.decode(String.self, forKey: .email)
                
                
                
                
                amount = try container.decode(Int.self, forKey: .amount)
                
                
                
                
                customerId = try container.decode(String.self, forKey: .customerId)
                
                
                
                
                aggregator = try container.decode(String.self, forKey: .aggregator)
                
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(merchantOrderId, forKey: .merchantOrderId)
                
                
                
                
                try? container.encodeIfPresent(orderId, forKey: .orderId)
                
                
                
                
                try? container.encode(timeout, forKey: .timeout)
                
                
                
                
                try? container.encode(vpa, forKey: .vpa)
                
                
                
                
                try? container.encodeIfPresent(method, forKey: .method)
                
                
                
                
                try? container.encodeIfPresent(contact, forKey: .contact)
                
                
                
                
                try? container.encodeIfPresent(currency, forKey: .currency)
                
                
                
                
                try? container.encode(razorpayPaymentId, forKey: .razorpayPaymentId)
                
                
                
                
                try? container.encodeIfPresent(email, forKey: .email)
                
                
                
                
                try? container.encode(amount, forKey: .amount)
                
                
                
                
                try? container.encodeIfPresent(customerId, forKey: .customerId)
                
                
                
                
                try? container.encodeIfPresent(aggregator, forKey: .aggregator)
                
                
            }
            
        }
        
        /*
            Model: PaymentInitializationResponse
            Used By: Payment
        */
        class PaymentInitializationResponse: Codable {
            
            public var merchantOrderId: String
            
            public var success: Bool
            
            public var customerId: String?
            
            public var upiPollUrl: String?
            
            public var vpa: String?
            
            public var method: String
            
            public var virtualId: String?
            
            public var timeout: Int?
            
            public var currency: String?
            
            public var pollingUrl: String
            
            public var razorpayPaymentId: String?
            
            public var amount: Int?
            
            public var aggregatorOrderId: String?
            
            public var bqrImage: String?
            
            public var status: String?
            
            public var aggregator: String
            

            public enum CodingKeys: String, CodingKey {
                
                case merchantOrderId = "merchant_order_id"
                
                case success = "success"
                
                case customerId = "customer_id"
                
                case upiPollUrl = "upi_poll_url"
                
                case vpa = "vpa"
                
                case method = "method"
                
                case virtualId = "virtual_id"
                
                case timeout = "timeout"
                
                case currency = "currency"
                
                case pollingUrl = "polling_url"
                
                case razorpayPaymentId = "razorpay_payment_id"
                
                case amount = "amount"
                
                case aggregatorOrderId = "aggregator_order_id"
                
                case bqrImage = "bqr_image"
                
                case status = "status"
                
                case aggregator = "aggregator"
                
            }

            public init(aggregator: String, aggregatorOrderId: String?, amount: Int?, bqrImage: String?, currency: String?, customerId: String?, merchantOrderId: String, method: String, pollingUrl: String, razorpayPaymentId: String?, status: String?, success: Bool, timeout: Int?, upiPollUrl: String?, virtualId: String?, vpa: String?) {
                
                self.merchantOrderId = merchantOrderId
                
                self.success = success
                
                self.customerId = customerId
                
                self.upiPollUrl = upiPollUrl
                
                self.vpa = vpa
                
                self.method = method
                
                self.virtualId = virtualId
                
                self.timeout = timeout
                
                self.currency = currency
                
                self.pollingUrl = pollingUrl
                
                self.razorpayPaymentId = razorpayPaymentId
                
                self.amount = amount
                
                self.aggregatorOrderId = aggregatorOrderId
                
                self.bqrImage = bqrImage
                
                self.status = status
                
                self.aggregator = aggregator
                
            }

            public func duplicate() -> PaymentInitializationResponse {
                let dict = self.dictionary!
                let copy = PaymentInitializationResponse(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                merchantOrderId = try container.decode(String.self, forKey: .merchantOrderId)
                
                
                
                
                success = try container.decode(Bool.self, forKey: .success)
                
                
                
                
                do {
                    customerId = try container.decode(String.self, forKey: .customerId)
                
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
                    vpa = try container.decode(String.self, forKey: .vpa)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                method = try container.decode(String.self, forKey: .method)
                
                
                
                
                do {
                    virtualId = try container.decode(String.self, forKey: .virtualId)
                
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
                
                
                
                pollingUrl = try container.decode(String.self, forKey: .pollingUrl)
                
                
                
                
                do {
                    razorpayPaymentId = try container.decode(String.self, forKey: .razorpayPaymentId)
                
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
                    aggregatorOrderId = try container.decode(String.self, forKey: .aggregatorOrderId)
                
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
                
                
                
                do {
                    status = try container.decode(String.self, forKey: .status)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                aggregator = try container.decode(String.self, forKey: .aggregator)
                
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(merchantOrderId, forKey: .merchantOrderId)
                
                
                
                
                try? container.encodeIfPresent(success, forKey: .success)
                
                
                
                
                try? container.encode(customerId, forKey: .customerId)
                
                
                
                
                try? container.encode(upiPollUrl, forKey: .upiPollUrl)
                
                
                
                
                try? container.encode(vpa, forKey: .vpa)
                
                
                
                
                try? container.encodeIfPresent(method, forKey: .method)
                
                
                
                
                try? container.encode(virtualId, forKey: .virtualId)
                
                
                
                
                try? container.encode(timeout, forKey: .timeout)
                
                
                
                
                try? container.encode(currency, forKey: .currency)
                
                
                
                
                try? container.encodeIfPresent(pollingUrl, forKey: .pollingUrl)
                
                
                
                
                try? container.encode(razorpayPaymentId, forKey: .razorpayPaymentId)
                
                
                
                
                try? container.encode(amount, forKey: .amount)
                
                
                
                
                try? container.encodeIfPresent(aggregatorOrderId, forKey: .aggregatorOrderId)
                
                
                
                
                try? container.encode(bqrImage, forKey: .bqrImage)
                
                
                
                
                try? container.encodeIfPresent(status, forKey: .status)
                
                
                
                
                try? container.encodeIfPresent(aggregator, forKey: .aggregator)
                
                
            }
            
        }
        
        /*
            Model: PaymentStatusUpdateRequest
            Used By: Payment
        */
        class PaymentStatusUpdateRequest: Codable {
            
            public var merchantOrderId: String
            
            public var orderId: String
            
            public var vpa: String
            
            public var method: String
            
            public var contact: String
            
            public var currency: String
            
            public var email: String
            
            public var amount: Int
            
            public var customerId: String
            
            public var status: String
            
            public var aggregator: String
            

            public enum CodingKeys: String, CodingKey {
                
                case merchantOrderId = "merchant_order_id"
                
                case orderId = "order_id"
                
                case vpa = "vpa"
                
                case method = "method"
                
                case contact = "contact"
                
                case currency = "currency"
                
                case email = "email"
                
                case amount = "amount"
                
                case customerId = "customer_id"
                
                case status = "status"
                
                case aggregator = "aggregator"
                
            }

            public init(aggregator: String, amount: Int, contact: String, currency: String, customerId: String, email: String, merchantOrderId: String, method: String, orderId: String, status: String, vpa: String) {
                
                self.merchantOrderId = merchantOrderId
                
                self.orderId = orderId
                
                self.vpa = vpa
                
                self.method = method
                
                self.contact = contact
                
                self.currency = currency
                
                self.email = email
                
                self.amount = amount
                
                self.customerId = customerId
                
                self.status = status
                
                self.aggregator = aggregator
                
            }

            public func duplicate() -> PaymentStatusUpdateRequest {
                let dict = self.dictionary!
                let copy = PaymentStatusUpdateRequest(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                merchantOrderId = try container.decode(String.self, forKey: .merchantOrderId)
                
                
                
                
                orderId = try container.decode(String.self, forKey: .orderId)
                
                
                
                
                vpa = try container.decode(String.self, forKey: .vpa)
                
                
                
                
                method = try container.decode(String.self, forKey: .method)
                
                
                
                
                contact = try container.decode(String.self, forKey: .contact)
                
                
                
                
                currency = try container.decode(String.self, forKey: .currency)
                
                
                
                
                email = try container.decode(String.self, forKey: .email)
                
                
                
                
                amount = try container.decode(Int.self, forKey: .amount)
                
                
                
                
                customerId = try container.decode(String.self, forKey: .customerId)
                
                
                
                
                status = try container.decode(String.self, forKey: .status)
                
                
                
                
                aggregator = try container.decode(String.self, forKey: .aggregator)
                
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(merchantOrderId, forKey: .merchantOrderId)
                
                
                
                
                try? container.encodeIfPresent(orderId, forKey: .orderId)
                
                
                
                
                try? container.encodeIfPresent(vpa, forKey: .vpa)
                
                
                
                
                try? container.encodeIfPresent(method, forKey: .method)
                
                
                
                
                try? container.encodeIfPresent(contact, forKey: .contact)
                
                
                
                
                try? container.encodeIfPresent(currency, forKey: .currency)
                
                
                
                
                try? container.encodeIfPresent(email, forKey: .email)
                
                
                
                
                try? container.encode(amount, forKey: .amount)
                
                
                
                
                try? container.encodeIfPresent(customerId, forKey: .customerId)
                
                
                
                
                try? container.encodeIfPresent(status, forKey: .status)
                
                
                
                
                try? container.encodeIfPresent(aggregator, forKey: .aggregator)
                
                
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
            Model: PaymentModeLogo
            Used By: Payment
        */
        class PaymentModeLogo: Codable {
            
            public var small: String
            
            public var large: String
            

            public enum CodingKeys: String, CodingKey {
                
                case small = "small"
                
                case large = "large"
                
            }

            public init(large: String, small: String) {
                
                self.small = small
                
                self.large = large
                
            }

            public func duplicate() -> PaymentModeLogo {
                let dict = self.dictionary!
                let copy = PaymentModeLogo(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                small = try container.decode(String.self, forKey: .small)
                
                
                
                
                large = try container.decode(String.self, forKey: .large)
                
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(small, forKey: .small)
                
                
                
                
                try? container.encodeIfPresent(large, forKey: .large)
                
                
            }
            
        }
        
        /*
            Model: IntentApp
            Used By: Payment
        */
        class IntentApp: Codable {
            
            public var logos: PaymentModeLogo?
            
            public var code: String?
            
            public var displayName: String?
            
            public var packageName: String?
            

            public enum CodingKeys: String, CodingKey {
                
                case logos = "logos"
                
                case code = "code"
                
                case displayName = "display_name"
                
                case packageName = "package_name"
                
            }

            public init(code: String?, displayName: String?, logos: PaymentModeLogo?, packageName: String?) {
                
                self.logos = logos
                
                self.code = code
                
                self.displayName = displayName
                
                self.packageName = packageName
                
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
                    displayName = try container.decode(String.self, forKey: .displayName)
                
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
                
                
                
                try? container.encode(logos, forKey: .logos)
                
                
                
                
                try? container.encode(code, forKey: .code)
                
                
                
                
                try? container.encode(displayName, forKey: .displayName)
                
                
                
                
                try? container.encode(packageName, forKey: .packageName)
                
                
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
            Model: PaymentModeList
            Used By: Payment
        */
        class PaymentModeList: Codable {
            
            public var displayPriority: Int?
            
            public var aggregatorName: String
            
            public var expired: Bool?
            
            public var logoUrl: PaymentModeLogo?
            
            public var cardIsin: String?
            
            public var cardFingerprint: String?
            
            public var name: String?
            
            public var cardToken: String?
            
            public var expYear: Int?
            
            public var merchantCode: String?
            
            public var intentApp: [IntentApp]?
            
            public var cardBrand: String?
            
            public var cardId: String?
            
            public var intentAppErrorList: [String]?
            
            public var fyndVpa: String?
            
            public var displayName: String?
            
            public var cardNumber: String?
            
            public var intentAppErrorDictList: [IntentAppErrorList]?
            
            public var cardReference: String?
            
            public var retryCount: Int?
            
            public var cardName: String?
            
            public var nickname: String?
            
            public var cardIssuer: String?
            
            public var code: String?
            
            public var timeout: Int?
            
            public var expMonth: Int?
            
            public var cardBrandImage: String?
            
            public var cardType: String?
            
            public var intentFlow: Bool?
            

            public enum CodingKeys: String, CodingKey {
                
                case displayPriority = "display_priority"
                
                case aggregatorName = "aggregator_name"
                
                case expired = "expired"
                
                case logoUrl = "logo_url"
                
                case cardIsin = "card_isin"
                
                case cardFingerprint = "card_fingerprint"
                
                case name = "name"
                
                case cardToken = "card_token"
                
                case expYear = "exp_year"
                
                case merchantCode = "merchant_code"
                
                case intentApp = "intent_app"
                
                case cardBrand = "card_brand"
                
                case cardId = "card_id"
                
                case intentAppErrorList = "intent_app_error_list"
                
                case fyndVpa = "fynd_vpa"
                
                case displayName = "display_name"
                
                case cardNumber = "card_number"
                
                case intentAppErrorDictList = "intent_app_error_dict_list"
                
                case cardReference = "card_reference"
                
                case retryCount = "retry_count"
                
                case cardName = "card_name"
                
                case nickname = "nickname"
                
                case cardIssuer = "card_issuer"
                
                case code = "code"
                
                case timeout = "timeout"
                
                case expMonth = "exp_month"
                
                case cardBrandImage = "card_brand_image"
                
                case cardType = "card_type"
                
                case intentFlow = "intent_flow"
                
            }

            public init(aggregatorName: String, cardBrand: String?, cardBrandImage: String?, cardFingerprint: String?, cardId: String?, cardIsin: String?, cardIssuer: String?, cardName: String?, cardNumber: String?, cardReference: String?, cardToken: String?, cardType: String?, code: String?, displayName: String?, displayPriority: Int?, expired: Bool?, expMonth: Int?, expYear: Int?, fyndVpa: String?, intentApp: [IntentApp]?, intentAppErrorDictList: [IntentAppErrorList]?, intentAppErrorList: [String]?, intentFlow: Bool?, logoUrl: PaymentModeLogo?, merchantCode: String?, name: String?, nickname: String?, retryCount: Int?, timeout: Int?) {
                
                self.displayPriority = displayPriority
                
                self.aggregatorName = aggregatorName
                
                self.expired = expired
                
                self.logoUrl = logoUrl
                
                self.cardIsin = cardIsin
                
                self.cardFingerprint = cardFingerprint
                
                self.name = name
                
                self.cardToken = cardToken
                
                self.expYear = expYear
                
                self.merchantCode = merchantCode
                
                self.intentApp = intentApp
                
                self.cardBrand = cardBrand
                
                self.cardId = cardId
                
                self.intentAppErrorList = intentAppErrorList
                
                self.fyndVpa = fyndVpa
                
                self.displayName = displayName
                
                self.cardNumber = cardNumber
                
                self.intentAppErrorDictList = intentAppErrorDictList
                
                self.cardReference = cardReference
                
                self.retryCount = retryCount
                
                self.cardName = cardName
                
                self.nickname = nickname
                
                self.cardIssuer = cardIssuer
                
                self.code = code
                
                self.timeout = timeout
                
                self.expMonth = expMonth
                
                self.cardBrandImage = cardBrandImage
                
                self.cardType = cardType
                
                self.intentFlow = intentFlow
                
            }

            public func duplicate() -> PaymentModeList {
                let dict = self.dictionary!
                let copy = PaymentModeList(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                do {
                    displayPriority = try container.decode(Int.self, forKey: .displayPriority)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                aggregatorName = try container.decode(String.self, forKey: .aggregatorName)
                
                
                
                
                do {
                    expired = try container.decode(Bool.self, forKey: .expired)
                
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
                    cardIsin = try container.decode(String.self, forKey: .cardIsin)
                
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
                    merchantCode = try container.decode(String.self, forKey: .merchantCode)
                
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
                    cardBrand = try container.decode(String.self, forKey: .cardBrand)
                
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
                    intentAppErrorList = try container.decode([String].self, forKey: .intentAppErrorList)
                
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
                    displayName = try container.decode(String.self, forKey: .displayName)
                
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
                    intentAppErrorDictList = try container.decode([IntentAppErrorList].self, forKey: .intentAppErrorDictList)
                
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
                    retryCount = try container.decode(Int.self, forKey: .retryCount)
                
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
                    cardIssuer = try container.decode(String.self, forKey: .cardIssuer)
                
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
                    timeout = try container.decode(Int.self, forKey: .timeout)
                
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
                    cardBrandImage = try container.decode(String.self, forKey: .cardBrandImage)
                
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
                    intentFlow = try container.decode(Bool.self, forKey: .intentFlow)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encode(displayPriority, forKey: .displayPriority)
                
                
                
                
                try? container.encodeIfPresent(aggregatorName, forKey: .aggregatorName)
                
                
                
                
                try? container.encode(expired, forKey: .expired)
                
                
                
                
                try? container.encode(logoUrl, forKey: .logoUrl)
                
                
                
                
                try? container.encode(cardIsin, forKey: .cardIsin)
                
                
                
                
                try? container.encode(cardFingerprint, forKey: .cardFingerprint)
                
                
                
                
                try? container.encode(name, forKey: .name)
                
                
                
                
                try? container.encode(cardToken, forKey: .cardToken)
                
                
                
                
                try? container.encode(expYear, forKey: .expYear)
                
                
                
                
                try? container.encode(merchantCode, forKey: .merchantCode)
                
                
                
                
                try? container.encode(intentApp, forKey: .intentApp)
                
                
                
                
                try? container.encode(cardBrand, forKey: .cardBrand)
                
                
                
                
                try? container.encode(cardId, forKey: .cardId)
                
                
                
                
                try? container.encode(intentAppErrorList, forKey: .intentAppErrorList)
                
                
                
                
                try? container.encode(fyndVpa, forKey: .fyndVpa)
                
                
                
                
                try? container.encode(displayName, forKey: .displayName)
                
                
                
                
                try? container.encode(cardNumber, forKey: .cardNumber)
                
                
                
                
                try? container.encode(intentAppErrorDictList, forKey: .intentAppErrorDictList)
                
                
                
                
                try? container.encode(cardReference, forKey: .cardReference)
                
                
                
                
                try? container.encode(retryCount, forKey: .retryCount)
                
                
                
                
                try? container.encode(cardName, forKey: .cardName)
                
                
                
                
                try? container.encode(nickname, forKey: .nickname)
                
                
                
                
                try? container.encode(cardIssuer, forKey: .cardIssuer)
                
                
                
                
                try? container.encode(code, forKey: .code)
                
                
                
                
                try? container.encode(timeout, forKey: .timeout)
                
                
                
                
                try? container.encode(expMonth, forKey: .expMonth)
                
                
                
                
                try? container.encode(cardBrandImage, forKey: .cardBrandImage)
                
                
                
                
                try? container.encode(cardType, forKey: .cardType)
                
                
                
                
                try? container.encode(intentFlow, forKey: .intentFlow)
                
                
            }
            
        }
        
        /*
            Model: RootPaymentMode
            Used By: Payment
        */
        class RootPaymentMode: Codable {
            
            public var displayPriority: Int
            
            public var aggregatorName: String?
            
            public var displayName: String
            
            public var addCardEnabled: Bool?
            
            public var anonymousEnable: Bool?
            
            public var name: String
            
            public var list: [PaymentModeList]?
            

            public enum CodingKeys: String, CodingKey {
                
                case displayPriority = "display_priority"
                
                case aggregatorName = "aggregator_name"
                
                case displayName = "display_name"
                
                case addCardEnabled = "add_card_enabled"
                
                case anonymousEnable = "anonymous_enable"
                
                case name = "name"
                
                case list = "list"
                
            }

            public init(addCardEnabled: Bool?, aggregatorName: String?, anonymousEnable: Bool?, displayName: String, displayPriority: Int, list: [PaymentModeList]?, name: String) {
                
                self.displayPriority = displayPriority
                
                self.aggregatorName = aggregatorName
                
                self.displayName = displayName
                
                self.addCardEnabled = addCardEnabled
                
                self.anonymousEnable = anonymousEnable
                
                self.name = name
                
                self.list = list
                
            }

            public func duplicate() -> RootPaymentMode {
                let dict = self.dictionary!
                let copy = RootPaymentMode(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                displayPriority = try container.decode(Int.self, forKey: .displayPriority)
                
                
                
                
                do {
                    aggregatorName = try container.decode(String.self, forKey: .aggregatorName)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                displayName = try container.decode(String.self, forKey: .displayName)
                
                
                
                
                do {
                    addCardEnabled = try container.decode(Bool.self, forKey: .addCardEnabled)
                
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
                
                
                
                name = try container.decode(String.self, forKey: .name)
                
                
                
                
                do {
                    list = try container.decode([PaymentModeList].self, forKey: .list)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(displayPriority, forKey: .displayPriority)
                
                
                
                
                try? container.encode(aggregatorName, forKey: .aggregatorName)
                
                
                
                
                try? container.encodeIfPresent(displayName, forKey: .displayName)
                
                
                
                
                try? container.encode(addCardEnabled, forKey: .addCardEnabled)
                
                
                
                
                try? container.encode(anonymousEnable, forKey: .anonymousEnable)
                
                
                
                
                try? container.encodeIfPresent(name, forKey: .name)
                
                
                
                
                try? container.encodeIfPresent(list, forKey: .list)
                
                
            }
            
        }
        
        /*
            Model: AggregatorRoute
            Used By: Payment
        */
        class AggregatorRoute: Codable {
            
            public var paymentFlowData: String?
            
            public var data: [String: Any]?
            
            public var apiLink: String?
            
            public var paymentFlow: String?
            

            public enum CodingKeys: String, CodingKey {
                
                case paymentFlowData = "payment_flow_data"
                
                case data = "data"
                
                case apiLink = "api_link"
                
                case paymentFlow = "payment_flow"
                
            }

            public init(apiLink: String?, data: [String: Any]?, paymentFlow: String?, paymentFlowData: String?) {
                
                self.paymentFlowData = paymentFlowData
                
                self.data = data
                
                self.apiLink = apiLink
                
                self.paymentFlow = paymentFlow
                
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
                    apiLink = try container.decode(String.self, forKey: .apiLink)
                
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
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encode(paymentFlowData, forKey: .paymentFlowData)
                
                
                
                
                try? container.encode(data, forKey: .data)
                
                
                
                
                try? container.encode(apiLink, forKey: .apiLink)
                
                
                
                
                try? container.encode(paymentFlow, forKey: .paymentFlow)
                
                
            }
            
        }
        
        /*
            Model: PaymentFlow
            Used By: Payment
        */
        class PaymentFlow: Codable {
            
            public var fynd: AggregatorRoute?
            
            public var upiRazorpay: AggregatorRoute?
            
            public var simpl: AggregatorRoute?
            
            public var juspay: AggregatorRoute?
            
            public var bqrRazorpay: AggregatorRoute?
            
            public var rupifi: AggregatorRoute?
            
            public var mswipe: AggregatorRoute?
            
            public var payubiz: AggregatorRoute?
            
            public var razorpay: AggregatorRoute?
            
            public var stripe: AggregatorRoute?
            
            public var ccavenue: AggregatorRoute?
            

            public enum CodingKeys: String, CodingKey {
                
                case fynd = "fynd"
                
                case upiRazorpay = "upi_razorpay"
                
                case simpl = "simpl"
                
                case juspay = "juspay"
                
                case bqrRazorpay = "bqr_razorpay"
                
                case rupifi = "rupifi"
                
                case mswipe = "mswipe"
                
                case payubiz = "payubiz"
                
                case razorpay = "razorpay"
                
                case stripe = "stripe"
                
                case ccavenue = "ccavenue"
                
            }

            public init(bqrRazorpay: AggregatorRoute?, ccavenue: AggregatorRoute?, fynd: AggregatorRoute?, juspay: AggregatorRoute?, mswipe: AggregatorRoute?, payubiz: AggregatorRoute?, razorpay: AggregatorRoute?, rupifi: AggregatorRoute?, simpl: AggregatorRoute?, stripe: AggregatorRoute?, upiRazorpay: AggregatorRoute?) {
                
                self.fynd = fynd
                
                self.upiRazorpay = upiRazorpay
                
                self.simpl = simpl
                
                self.juspay = juspay
                
                self.bqrRazorpay = bqrRazorpay
                
                self.rupifi = rupifi
                
                self.mswipe = mswipe
                
                self.payubiz = payubiz
                
                self.razorpay = razorpay
                
                self.stripe = stripe
                
                self.ccavenue = ccavenue
                
            }

            public func duplicate() -> PaymentFlow {
                let dict = self.dictionary!
                let copy = PaymentFlow(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                do {
                    fynd = try container.decode(AggregatorRoute.self, forKey: .fynd)
                
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
                    simpl = try container.decode(AggregatorRoute.self, forKey: .simpl)
                
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
                    razorpay = try container.decode(AggregatorRoute.self, forKey: .razorpay)
                
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
                    ccavenue = try container.decode(AggregatorRoute.self, forKey: .ccavenue)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encode(fynd, forKey: .fynd)
                
                
                
                
                try? container.encode(upiRazorpay, forKey: .upiRazorpay)
                
                
                
                
                try? container.encode(simpl, forKey: .simpl)
                
                
                
                
                try? container.encode(juspay, forKey: .juspay)
                
                
                
                
                try? container.encode(bqrRazorpay, forKey: .bqrRazorpay)
                
                
                
                
                try? container.encode(rupifi, forKey: .rupifi)
                
                
                
                
                try? container.encode(mswipe, forKey: .mswipe)
                
                
                
                
                try? container.encode(payubiz, forKey: .payubiz)
                
                
                
                
                try? container.encode(razorpay, forKey: .razorpay)
                
                
                
                
                try? container.encode(stripe, forKey: .stripe)
                
                
                
                
                try? container.encode(ccavenue, forKey: .ccavenue)
                
                
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
            
            public var status: String?
            
            public var kycUrl: String?
            

            public enum CodingKeys: String, CodingKey {
                
                case status = "status"
                
                case kycUrl = "kyc_url"
                
            }

            public init(kycUrl: String?, status: String?) {
                
                self.status = status
                
                self.kycUrl = kycUrl
                
            }

            public func duplicate() -> RupifiBannerData {
                let dict = self.dictionary!
                let copy = RupifiBannerData(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                do {
                    status = try container.decode(String.self, forKey: .status)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    kycUrl = try container.decode(String.self, forKey: .kycUrl)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(status, forKey: .status)
                
                
                
                
                try? container.encodeIfPresent(kycUrl, forKey: .kycUrl)
                
                
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
            
            public var status: String?
            
            public var kycUrl: String?
            

            public enum CodingKeys: String, CodingKey {
                
                case status = "status"
                
                case kycUrl = "kyc_url"
                
            }

            public init(kycUrl: String?, status: String?) {
                
                self.status = status
                
                self.kycUrl = kycUrl
                
            }

            public func duplicate() -> EpaylaterBannerData {
                let dict = self.dictionary!
                let copy = EpaylaterBannerData(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                do {
                    status = try container.decode(String.self, forKey: .status)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    kycUrl = try container.decode(String.self, forKey: .kycUrl)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(status, forKey: .status)
                
                
                
                
                try? container.encodeIfPresent(kycUrl, forKey: .kycUrl)
                
                
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
            Model: TransferItemsDetails
            Used By: Payment
        */
        class TransferItemsDetails: Codable {
            
            public var logoSmall: String
            
            public var id: Int
            
            public var displayName: String?
            
            public var name: String
            
            public var logoLarge: String
            

            public enum CodingKeys: String, CodingKey {
                
                case logoSmall = "logo_small"
                
                case id = "id"
                
                case displayName = "display_name"
                
                case name = "name"
                
                case logoLarge = "logo_large"
                
            }

            public init(displayName: String?, id: Int, logoLarge: String, logoSmall: String, name: String) {
                
                self.logoSmall = logoSmall
                
                self.id = id
                
                self.displayName = displayName
                
                self.name = name
                
                self.logoLarge = logoLarge
                
            }

            public func duplicate() -> TransferItemsDetails {
                let dict = self.dictionary!
                let copy = TransferItemsDetails(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                logoSmall = try container.decode(String.self, forKey: .logoSmall)
                
                
                
                
                id = try container.decode(Int.self, forKey: .id)
                
                
                
                
                do {
                    displayName = try container.decode(String.self, forKey: .displayName)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                name = try container.decode(String.self, forKey: .name)
                
                
                
                
                logoLarge = try container.decode(String.self, forKey: .logoLarge)
                
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(logoSmall, forKey: .logoSmall)
                
                
                
                
                try? container.encodeIfPresent(id, forKey: .id)
                
                
                
                
                try? container.encodeIfPresent(displayName, forKey: .displayName)
                
                
                
                
                try? container.encodeIfPresent(name, forKey: .name)
                
                
                
                
                try? container.encodeIfPresent(logoLarge, forKey: .logoLarge)
                
                
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
            
            public var id: Int
            
            public var branchName: Bool?
            
            public var title: String
            
            public var email: String
            
            public var ifscCode: String
            
            public var bankName: String
            
            public var displayName: String
            
            public var mobile: Bool?
            
            public var beneficiaryId: String
            
            public var subtitle: String
            
            public var comment: Bool?
            
            public var isActive: Bool
            
            public var delightsUserName: String?
            
            public var accountHolder: String
            
            public var createdOn: String
            
            public var accountNo: String
            
            public var transferMode: String
            
            public var address: String
            
            public var modifiedOn: String
            

            public enum CodingKeys: String, CodingKey {
                
                case id = "id"
                
                case branchName = "branch_name"
                
                case title = "title"
                
                case email = "email"
                
                case ifscCode = "ifsc_code"
                
                case bankName = "bank_name"
                
                case displayName = "display_name"
                
                case mobile = "mobile"
                
                case beneficiaryId = "beneficiary_id"
                
                case subtitle = "subtitle"
                
                case comment = "comment"
                
                case isActive = "is_active"
                
                case delightsUserName = "delights_user_name"
                
                case accountHolder = "account_holder"
                
                case createdOn = "created_on"
                
                case accountNo = "account_no"
                
                case transferMode = "transfer_mode"
                
                case address = "address"
                
                case modifiedOn = "modified_on"
                
            }

            public init(accountHolder: String, accountNo: String, address: String, bankName: String, beneficiaryId: String, branchName: Bool?, comment: Bool?, createdOn: String, delightsUserName: String?, displayName: String, email: String, id: Int, ifscCode: String, isActive: Bool, mobile: Bool?, modifiedOn: String, subtitle: String, title: String, transferMode: String) {
                
                self.id = id
                
                self.branchName = branchName
                
                self.title = title
                
                self.email = email
                
                self.ifscCode = ifscCode
                
                self.bankName = bankName
                
                self.displayName = displayName
                
                self.mobile = mobile
                
                self.beneficiaryId = beneficiaryId
                
                self.subtitle = subtitle
                
                self.comment = comment
                
                self.isActive = isActive
                
                self.delightsUserName = delightsUserName
                
                self.accountHolder = accountHolder
                
                self.createdOn = createdOn
                
                self.accountNo = accountNo
                
                self.transferMode = transferMode
                
                self.address = address
                
                self.modifiedOn = modifiedOn
                
            }

            public func duplicate() -> OrderBeneficiaryDetails {
                let dict = self.dictionary!
                let copy = OrderBeneficiaryDetails(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                id = try container.decode(Int.self, forKey: .id)
                
                
                
                
                do {
                    branchName = try container.decode(Bool.self, forKey: .branchName)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                title = try container.decode(String.self, forKey: .title)
                
                
                
                
                email = try container.decode(String.self, forKey: .email)
                
                
                
                
                ifscCode = try container.decode(String.self, forKey: .ifscCode)
                
                
                
                
                bankName = try container.decode(String.self, forKey: .bankName)
                
                
                
                
                displayName = try container.decode(String.self, forKey: .displayName)
                
                
                
                
                do {
                    mobile = try container.decode(Bool.self, forKey: .mobile)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                beneficiaryId = try container.decode(String.self, forKey: .beneficiaryId)
                
                
                
                
                subtitle = try container.decode(String.self, forKey: .subtitle)
                
                
                
                
                do {
                    comment = try container.decode(Bool.self, forKey: .comment)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                isActive = try container.decode(Bool.self, forKey: .isActive)
                
                
                
                
                do {
                    delightsUserName = try container.decode(String.self, forKey: .delightsUserName)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                accountHolder = try container.decode(String.self, forKey: .accountHolder)
                
                
                
                
                createdOn = try container.decode(String.self, forKey: .createdOn)
                
                
                
                
                accountNo = try container.decode(String.self, forKey: .accountNo)
                
                
                
                
                transferMode = try container.decode(String.self, forKey: .transferMode)
                
                
                
                
                address = try container.decode(String.self, forKey: .address)
                
                
                
                
                modifiedOn = try container.decode(String.self, forKey: .modifiedOn)
                
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(id, forKey: .id)
                
                
                
                
                try? container.encodeIfPresent(branchName, forKey: .branchName)
                
                
                
                
                try? container.encodeIfPresent(title, forKey: .title)
                
                
                
                
                try? container.encodeIfPresent(email, forKey: .email)
                
                
                
                
                try? container.encodeIfPresent(ifscCode, forKey: .ifscCode)
                
                
                
                
                try? container.encodeIfPresent(bankName, forKey: .bankName)
                
                
                
                
                try? container.encodeIfPresent(displayName, forKey: .displayName)
                
                
                
                
                try? container.encodeIfPresent(mobile, forKey: .mobile)
                
                
                
                
                try? container.encodeIfPresent(beneficiaryId, forKey: .beneficiaryId)
                
                
                
                
                try? container.encodeIfPresent(subtitle, forKey: .subtitle)
                
                
                
                
                try? container.encodeIfPresent(comment, forKey: .comment)
                
                
                
                
                try? container.encodeIfPresent(isActive, forKey: .isActive)
                
                
                
                
                try? container.encode(delightsUserName, forKey: .delightsUserName)
                
                
                
                
                try? container.encodeIfPresent(accountHolder, forKey: .accountHolder)
                
                
                
                
                try? container.encodeIfPresent(createdOn, forKey: .createdOn)
                
                
                
                
                try? container.encodeIfPresent(accountNo, forKey: .accountNo)
                
                
                
                
                try? container.encodeIfPresent(transferMode, forKey: .transferMode)
                
                
                
                
                try? container.encodeIfPresent(address, forKey: .address)
                
                
                
                
                try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)
                
                
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
            
            public var success: Bool?
            
            public var branchName: String
            

            public enum CodingKeys: String, CodingKey {
                
                case bankName = "bank_name"
                
                case success = "success"
                
                case branchName = "branch_name"
                
            }

            public init(bankName: String, branchName: String, success: Bool?) {
                
                self.bankName = bankName
                
                self.success = success
                
                self.branchName = branchName
                
            }

            public func duplicate() -> IfscCodeResponse {
                let dict = self.dictionary!
                let copy = IfscCodeResponse(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                bankName = try container.decode(String.self, forKey: .bankName)
                
                
                
                
                do {
                    success = try container.decode(Bool.self, forKey: .success)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                branchName = try container.decode(String.self, forKey: .branchName)
                
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(bankName, forKey: .bankName)
                
                
                
                
                try? container.encodeIfPresent(success, forKey: .success)
                
                
                
                
                try? container.encodeIfPresent(branchName, forKey: .branchName)
                
                
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
            
            public var success: Bool?
            
            public var message: String
            

            public enum CodingKeys: String, CodingKey {
                
                case success = "success"
                
                case message = "message"
                
            }

            public init(message: String, success: Bool?) {
                
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
            
            public var wallet: String?
            
            public var vpa: String?
            
            public var branchName: String
            
            public var comment: String?
            
            public var address: String?
            
            public var accountHolder: String
            
            public var email: String
            
            public var mobile: String
            
            public var ifscCode: String
            
            public var bankName: String
            
            public var accountNo: String
            

            public enum CodingKeys: String, CodingKey {
                
                case wallet = "wallet"
                
                case vpa = "vpa"
                
                case branchName = "branch_name"
                
                case comment = "comment"
                
                case address = "address"
                
                case accountHolder = "account_holder"
                
                case email = "email"
                
                case mobile = "mobile"
                
                case ifscCode = "ifsc_code"
                
                case bankName = "bank_name"
                
                case accountNo = "account_no"
                
            }

            public init(accountHolder: String, accountNo: String, address: String?, bankName: String, branchName: String, comment: String?, email: String, ifscCode: String, mobile: String, vpa: String?, wallet: String?) {
                
                self.wallet = wallet
                
                self.vpa = vpa
                
                self.branchName = branchName
                
                self.comment = comment
                
                self.address = address
                
                self.accountHolder = accountHolder
                
                self.email = email
                
                self.mobile = mobile
                
                self.ifscCode = ifscCode
                
                self.bankName = bankName
                
                self.accountNo = accountNo
                
            }

            public func duplicate() -> BeneficiaryModeDetails {
                let dict = self.dictionary!
                let copy = BeneficiaryModeDetails(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                do {
                    wallet = try container.decode(String.self, forKey: .wallet)
                
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
                
                
                
                branchName = try container.decode(String.self, forKey: .branchName)
                
                
                
                
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
                
                
                
                
                email = try container.decode(String.self, forKey: .email)
                
                
                
                
                mobile = try container.decode(String.self, forKey: .mobile)
                
                
                
                
                ifscCode = try container.decode(String.self, forKey: .ifscCode)
                
                
                
                
                bankName = try container.decode(String.self, forKey: .bankName)
                
                
                
                
                accountNo = try container.decode(String.self, forKey: .accountNo)
                
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encode(wallet, forKey: .wallet)
                
                
                
                
                try? container.encode(vpa, forKey: .vpa)
                
                
                
                
                try? container.encodeIfPresent(branchName, forKey: .branchName)
                
                
                
                
                try? container.encodeIfPresent(comment, forKey: .comment)
                
                
                
                
                try? container.encodeIfPresent(address, forKey: .address)
                
                
                
                
                try? container.encodeIfPresent(accountHolder, forKey: .accountHolder)
                
                
                
                
                try? container.encodeIfPresent(email, forKey: .email)
                
                
                
                
                try? container.encodeIfPresent(mobile, forKey: .mobile)
                
                
                
                
                try? container.encodeIfPresent(ifscCode, forKey: .ifscCode)
                
                
                
                
                try? container.encodeIfPresent(bankName, forKey: .bankName)
                
                
                
                
                try? container.encodeIfPresent(accountNo, forKey: .accountNo)
                
                
            }
            
        }
        
        /*
            Model: AddBeneficiaryDetailsRequest
            Used By: Payment
        */
        class AddBeneficiaryDetailsRequest: Codable {
            
            public var transferMode: String
            
            public var orderId: String
            
            public var requestId: String?
            
            public var otp: String?
            
            public var shipmentId: String
            
            public var details: BeneficiaryModeDetails
            
            public var delights: Bool
            

            public enum CodingKeys: String, CodingKey {
                
                case transferMode = "transfer_mode"
                
                case orderId = "order_id"
                
                case requestId = "request_id"
                
                case otp = "otp"
                
                case shipmentId = "shipment_id"
                
                case details = "details"
                
                case delights = "delights"
                
            }

            public init(delights: Bool, details: BeneficiaryModeDetails, orderId: String, otp: String?, requestId: String?, shipmentId: String, transferMode: String) {
                
                self.transferMode = transferMode
                
                self.orderId = orderId
                
                self.requestId = requestId
                
                self.otp = otp
                
                self.shipmentId = shipmentId
                
                self.details = details
                
                self.delights = delights
                
            }

            public func duplicate() -> AddBeneficiaryDetailsRequest {
                let dict = self.dictionary!
                let copy = AddBeneficiaryDetailsRequest(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                transferMode = try container.decode(String.self, forKey: .transferMode)
                
                
                
                
                orderId = try container.decode(String.self, forKey: .orderId)
                
                
                
                
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
                
                
                
                shipmentId = try container.decode(String.self, forKey: .shipmentId)
                
                
                
                
                details = try container.decode(BeneficiaryModeDetails.self, forKey: .details)
                
                
                
                
                delights = try container.decode(Bool.self, forKey: .delights)
                
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(transferMode, forKey: .transferMode)
                
                
                
                
                try? container.encodeIfPresent(orderId, forKey: .orderId)
                
                
                
                
                try? container.encodeIfPresent(requestId, forKey: .requestId)
                
                
                
                
                try? container.encodeIfPresent(otp, forKey: .otp)
                
                
                
                
                try? container.encodeIfPresent(shipmentId, forKey: .shipmentId)
                
                
                
                
                try? container.encodeIfPresent(details, forKey: .details)
                
                
                
                
                try? container.encodeIfPresent(delights, forKey: .delights)
                
                
            }
            
        }
        
        /*
            Model: RefundAccountResponse
            Used By: Payment
        */
        class RefundAccountResponse: Codable {
            
            public var isVerifiedFlag: Bool?
            
            public var success: Bool
            
            public var message: String
            
            public var data: [String: Any]?
            

            public enum CodingKeys: String, CodingKey {
                
                case isVerifiedFlag = "is_verified_flag"
                
                case success = "success"
                
                case message = "message"
                
                case data = "data"
                
            }

            public init(data: [String: Any]?, isVerifiedFlag: Bool?, message: String, success: Bool) {
                
                self.isVerifiedFlag = isVerifiedFlag
                
                self.success = success
                
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
                
                
                do {
                    isVerifiedFlag = try container.decode(Bool.self, forKey: .isVerifiedFlag)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                success = try container.decode(Bool.self, forKey: .success)
                
                
                
                
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
                
                
                
                try? container.encodeIfPresent(isVerifiedFlag, forKey: .isVerifiedFlag)
                
                
                
                
                try? container.encodeIfPresent(success, forKey: .success)
                
                
                
                
                try? container.encodeIfPresent(message, forKey: .message)
                
                
                
                
                try? container.encodeIfPresent(data, forKey: .data)
                
                
            }
            
        }
        
        /*
            Model: BankDetailsForOTP
            Used By: Payment
        */
        class BankDetailsForOTP: Codable {
            
            public var branchName: String
            
            public var accountHolder: String
            
            public var ifscCode: String
            
            public var bankName: String
            
            public var accountNo: String
            

            public enum CodingKeys: String, CodingKey {
                
                case branchName = "branch_name"
                
                case accountHolder = "account_holder"
                
                case ifscCode = "ifsc_code"
                
                case bankName = "bank_name"
                
                case accountNo = "account_no"
                
            }

            public init(accountHolder: String, accountNo: String, bankName: String, branchName: String, ifscCode: String) {
                
                self.branchName = branchName
                
                self.accountHolder = accountHolder
                
                self.ifscCode = ifscCode
                
                self.bankName = bankName
                
                self.accountNo = accountNo
                
            }

            public func duplicate() -> BankDetailsForOTP {
                let dict = self.dictionary!
                let copy = BankDetailsForOTP(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                branchName = try container.decode(String.self, forKey: .branchName)
                
                
                
                
                accountHolder = try container.decode(String.self, forKey: .accountHolder)
                
                
                
                
                ifscCode = try container.decode(String.self, forKey: .ifscCode)
                
                
                
                
                bankName = try container.decode(String.self, forKey: .bankName)
                
                
                
                
                accountNo = try container.decode(String.self, forKey: .accountNo)
                
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(branchName, forKey: .branchName)
                
                
                
                
                try? container.encodeIfPresent(accountHolder, forKey: .accountHolder)
                
                
                
                
                try? container.encodeIfPresent(ifscCode, forKey: .ifscCode)
                
                
                
                
                try? container.encodeIfPresent(bankName, forKey: .bankName)
                
                
                
                
                try? container.encodeIfPresent(accountNo, forKey: .accountNo)
                
                
            }
            
        }
        
        /*
            Model: AddBeneficiaryDetailsOTPRequest
            Used By: Payment
        */
        class AddBeneficiaryDetailsOTPRequest: Codable {
            
            public var details: BankDetailsForOTP
            
            public var orderId: String
            

            public enum CodingKeys: String, CodingKey {
                
                case details = "details"
                
                case orderId = "order_id"
                
            }

            public init(details: BankDetailsForOTP, orderId: String) {
                
                self.details = details
                
                self.orderId = orderId
                
            }

            public func duplicate() -> AddBeneficiaryDetailsOTPRequest {
                let dict = self.dictionary!
                let copy = AddBeneficiaryDetailsOTPRequest(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                details = try container.decode(BankDetailsForOTP.self, forKey: .details)
                
                
                
                
                orderId = try container.decode(String.self, forKey: .orderId)
                
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(details, forKey: .details)
                
                
                
                
                try? container.encodeIfPresent(orderId, forKey: .orderId)
                
                
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
            
            public var currency: String
            
            public var value: Double
            
            public var formattedValue: String
            

            public enum CodingKeys: String, CodingKey {
                
                case currency = "currency"
                
                case value = "value"
                
                case formattedValue = "formatted_value"
                
            }

            public init(currency: String, formattedValue: String, value: Double) {
                
                self.currency = currency
                
                self.value = value
                
                self.formattedValue = formattedValue
                
            }

            public func duplicate() -> BalanceDetails {
                let dict = self.dictionary!
                let copy = BalanceDetails(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                currency = try container.decode(String.self, forKey: .currency)
                
                
                
                
                value = try container.decode(Double.self, forKey: .value)
                
                
                
                
                formattedValue = try container.decode(String.self, forKey: .formattedValue)
                
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(currency, forKey: .currency)
                
                
                
                
                try? container.encodeIfPresent(value, forKey: .value)
                
                
                
                
                try? container.encodeIfPresent(formattedValue, forKey: .formattedValue)
                
                
            }
            
        }
        
        /*
            Model: CreditSummary
            Used By: Payment
        */
        class CreditSummary: Codable {
            
            public var statusMessage: String
            
            public var status: String
            
            public var balance: [BalanceDetails]?
            
            public var merchantCustomerRefId: String
            

            public enum CodingKeys: String, CodingKey {
                
                case statusMessage = "status_message"
                
                case status = "status"
                
                case balance = "balance"
                
                case merchantCustomerRefId = "merchant_customer_ref_id"
                
            }

            public init(balance: [BalanceDetails]?, merchantCustomerRefId: String, status: String, statusMessage: String) {
                
                self.statusMessage = statusMessage
                
                self.status = status
                
                self.balance = balance
                
                self.merchantCustomerRefId = merchantCustomerRefId
                
            }

            public func duplicate() -> CreditSummary {
                let dict = self.dictionary!
                let copy = CreditSummary(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                statusMessage = try container.decode(String.self, forKey: .statusMessage)
                
                
                
                
                status = try container.decode(String.self, forKey: .status)
                
                
                
                
                do {
                    balance = try container.decode([BalanceDetails].self, forKey: .balance)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                merchantCustomerRefId = try container.decode(String.self, forKey: .merchantCustomerRefId)
                
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(statusMessage, forKey: .statusMessage)
                
                
                
                
                try? container.encodeIfPresent(status, forKey: .status)
                
                
                
                
                try? container.encodeIfPresent(balance, forKey: .balance)
                
                
                
                
                try? container.encodeIfPresent(merchantCustomerRefId, forKey: .merchantCustomerRefId)
                
                
            }
            
        }
        
        /*
            Model: CustomerCreditSummaryResponse
            Used By: Payment
        */
        class CustomerCreditSummaryResponse: Codable {
            
            public var success: Bool
            
            public var data: [CreditSummary]?
            

            public enum CodingKeys: String, CodingKey {
                
                case success = "success"
                
                case data = "data"
                
            }

            public init(data: [CreditSummary]?, success: Bool) {
                
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
                    data = try container.decode([CreditSummary].self, forKey: .data)
                
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
            
            public var data: [RedirectURL]
            

            public enum CodingKeys: String, CodingKey {
                
                case success = "success"
                
                case data = "data"
                
            }

            public init(data: [RedirectURL], success: Bool) {
                
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
                
                
                
                
                data = try container.decode([RedirectURL].self, forKey: .data)
                
                
                
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
            
            public var signupUrl: String
            
            public var status: Bool
            
            public var isRegistered: Bool
            

            public enum CodingKeys: String, CodingKey {
                
                case signupUrl = "signup_url"
                
                case status = "status"
                
                case isRegistered = "is_registered"
                
            }

            public init(isRegistered: Bool, signupUrl: String, status: Bool) {
                
                self.signupUrl = signupUrl
                
                self.status = status
                
                self.isRegistered = isRegistered
                
            }

            public func duplicate() -> CreditDetail {
                let dict = self.dictionary!
                let copy = CreditDetail(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                signupUrl = try container.decode(String.self, forKey: .signupUrl)
                
                
                
                
                status = try container.decode(Bool.self, forKey: .status)
                
                
                
                
                isRegistered = try container.decode(Bool.self, forKey: .isRegistered)
                
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(signupUrl, forKey: .signupUrl)
                
                
                
                
                try? container.encodeIfPresent(status, forKey: .status)
                
                
                
                
                try? container.encodeIfPresent(isRegistered, forKey: .isRegistered)
                
                
            }
            
        }
        
        /*
            Model: CheckCreditResponse
            Used By: Payment
        */
        class CheckCreditResponse: Codable {
            
            public var success: Bool
            
            public var data: [CreditDetail]
            

            public enum CodingKeys: String, CodingKey {
                
                case success = "success"
                
                case data = "data"
                
            }

            public init(data: [CreditDetail], success: Bool) {
                
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
                
                
                
                
                data = try container.decode([CreditDetail].self, forKey: .data)
                
                
                
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
            
            public var landMark: String?
            
            public var ownershipType: String?
            
            public var addressline2: String?
            
            public var state: String
            
            public var pincode: String
            
            public var city: String
            
            public var addressline1: String
            

            public enum CodingKeys: String, CodingKey {
                
                case landMark = "land_mark"
                
                case ownershipType = "ownership_type"
                
                case addressline2 = "addressline2"
                
                case state = "state"
                
                case pincode = "pincode"
                
                case city = "city"
                
                case addressline1 = "addressline1"
                
            }

            public init(addressline1: String, addressline2: String?, city: String, landMark: String?, ownershipType: String?, pincode: String, state: String) {
                
                self.landMark = landMark
                
                self.ownershipType = ownershipType
                
                self.addressline2 = addressline2
                
                self.state = state
                
                self.pincode = pincode
                
                self.city = city
                
                self.addressline1 = addressline1
                
            }

            public func duplicate() -> KYCAddress {
                let dict = self.dictionary!
                let copy = KYCAddress(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                do {
                    landMark = try container.decode(String.self, forKey: .landMark)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    ownershipType = try container.decode(String.self, forKey: .ownershipType)
                
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
                
                
                
                state = try container.decode(String.self, forKey: .state)
                
                
                
                
                pincode = try container.decode(String.self, forKey: .pincode)
                
                
                
                
                city = try container.decode(String.self, forKey: .city)
                
                
                
                
                addressline1 = try container.decode(String.self, forKey: .addressline1)
                
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encode(landMark, forKey: .landMark)
                
                
                
                
                try? container.encode(ownershipType, forKey: .ownershipType)
                
                
                
                
                try? container.encode(addressline2, forKey: .addressline2)
                
                
                
                
                try? container.encodeIfPresent(state, forKey: .state)
                
                
                
                
                try? container.encodeIfPresent(pincode, forKey: .pincode)
                
                
                
                
                try? container.encodeIfPresent(city, forKey: .city)
                
                
                
                
                try? container.encodeIfPresent(addressline1, forKey: .addressline1)
                
                
            }
            
        }
        
        /*
            Model: BusinessDetails
            Used By: Payment
        */
        class BusinessDetails: Codable {
            
            public var vintage: String?
            
            public var businessType: String?
            
            public var pan: String?
            
            public var gstin: String?
            
            public var businessOwnershipType: String?
            
            public var fda: String?
            
            public var shopAndEstablishment: [String: Any]?
            
            public var address: [KYCAddress]?
            
            public var fssai: String?
            
            public var name: String?
            
            public var entityType: String?
            

            public enum CodingKeys: String, CodingKey {
                
                case vintage = "vintage"
                
                case businessType = "business_type"
                
                case pan = "pan"
                
                case gstin = "gstin"
                
                case businessOwnershipType = "business_ownership_type"
                
                case fda = "fda"
                
                case shopAndEstablishment = "shop_and_establishment"
                
                case address = "address"
                
                case fssai = "fssai"
                
                case name = "name"
                
                case entityType = "entity_type"
                
            }

            public init(address: [KYCAddress]?, businessOwnershipType: String?, businessType: String?, entityType: String?, fda: String?, fssai: String?, gstin: String?, name: String?, pan: String?, shopAndEstablishment: [String: Any]?, vintage: String?) {
                
                self.vintage = vintage
                
                self.businessType = businessType
                
                self.pan = pan
                
                self.gstin = gstin
                
                self.businessOwnershipType = businessOwnershipType
                
                self.fda = fda
                
                self.shopAndEstablishment = shopAndEstablishment
                
                self.address = address
                
                self.fssai = fssai
                
                self.name = name
                
                self.entityType = entityType
                
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
                    businessType = try container.decode(String.self, forKey: .businessType)
                
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
                    gstin = try container.decode(String.self, forKey: .gstin)
                
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
                    address = try container.decode([KYCAddress].self, forKey: .address)
                
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
                    name = try container.decode(String.self, forKey: .name)
                
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
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encode(vintage, forKey: .vintage)
                
                
                
                
                try? container.encode(businessType, forKey: .businessType)
                
                
                
                
                try? container.encode(pan, forKey: .pan)
                
                
                
                
                try? container.encode(gstin, forKey: .gstin)
                
                
                
                
                try? container.encode(businessOwnershipType, forKey: .businessOwnershipType)
                
                
                
                
                try? container.encode(fda, forKey: .fda)
                
                
                
                
                try? container.encodeIfPresent(shopAndEstablishment, forKey: .shopAndEstablishment)
                
                
                
                
                try? container.encodeIfPresent(address, forKey: .address)
                
                
                
                
                try? container.encode(fssai, forKey: .fssai)
                
                
                
                
                try? container.encode(name, forKey: .name)
                
                
                
                
                try? container.encode(entityType, forKey: .entityType)
                
                
            }
            
        }
        
        /*
            Model: DeviceDetails
            Used By: Payment
        */
        class DeviceDetails: Codable {
            
            public var identifierType: String?
            
            public var identificationNumber: String?
            
            public var os: String?
            
            public var osVersion: String?
            
            public var deviceMake: String?
            
            public var deviceType: String?
            
            public var deviceModel: String?
            

            public enum CodingKeys: String, CodingKey {
                
                case identifierType = "identifier_type"
                
                case identificationNumber = "identification_number"
                
                case os = "os"
                
                case osVersion = "os_version"
                
                case deviceMake = "device_make"
                
                case deviceType = "device_type"
                
                case deviceModel = "device_model"
                
            }

            public init(deviceMake: String?, deviceModel: String?, deviceType: String?, identificationNumber: String?, identifierType: String?, os: String?, osVersion: String?) {
                
                self.identifierType = identifierType
                
                self.identificationNumber = identificationNumber
                
                self.os = os
                
                self.osVersion = osVersion
                
                self.deviceMake = deviceMake
                
                self.deviceType = deviceType
                
                self.deviceModel = deviceModel
                
            }

            public func duplicate() -> DeviceDetails {
                let dict = self.dictionary!
                let copy = DeviceDetails(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
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
                    deviceMake = try container.decode(String.self, forKey: .deviceMake)
                
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
                
                
                
                do {
                    deviceModel = try container.decode(String.self, forKey: .deviceModel)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encode(identifierType, forKey: .identifierType)
                
                
                
                
                try? container.encode(identificationNumber, forKey: .identificationNumber)
                
                
                
                
                try? container.encode(os, forKey: .os)
                
                
                
                
                try? container.encode(osVersion, forKey: .osVersion)
                
                
                
                
                try? container.encode(deviceMake, forKey: .deviceMake)
                
                
                
                
                try? container.encode(deviceType, forKey: .deviceType)
                
                
                
                
                try? container.encode(deviceModel, forKey: .deviceModel)
                
                
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
            
            public var emailVerified: Bool
            
            public var firstName: String
            
            public var gender: String
            
            public var middleName: String?
            
            public var mobileVerified: Bool
            
            public var pan: String?
            
            public var lastName: String?
            
            public var phone: String
            
            public var addressAsPerId: KYCAddress
            
            public var voterId: String?
            
            public var passport: String?
            
            public var email: String
            
            public var fathersName: String?
            
            public var drivingLicense: String?
            
            public var mothersName: String?
            
            public var dob: String
            

            public enum CodingKeys: String, CodingKey {
                
                case emailVerified = "email_verified"
                
                case firstName = "first_name"
                
                case gender = "gender"
                
                case middleName = "middle_name"
                
                case mobileVerified = "mobile_verified"
                
                case pan = "pan"
                
                case lastName = "last_name"
                
                case phone = "phone"
                
                case addressAsPerId = "address_as_per_id"
                
                case voterId = "voter_id"
                
                case passport = "passport"
                
                case email = "email"
                
                case fathersName = "fathers_name"
                
                case drivingLicense = "driving_license"
                
                case mothersName = "mothers_name"
                
                case dob = "dob"
                
            }

            public init(addressAsPerId: KYCAddress, dob: String, drivingLicense: String?, email: String, emailVerified: Bool, fathersName: String?, firstName: String, gender: String, lastName: String?, middleName: String?, mobileVerified: Bool, mothersName: String?, pan: String?, passport: String?, phone: String, voterId: String?) {
                
                self.emailVerified = emailVerified
                
                self.firstName = firstName
                
                self.gender = gender
                
                self.middleName = middleName
                
                self.mobileVerified = mobileVerified
                
                self.pan = pan
                
                self.lastName = lastName
                
                self.phone = phone
                
                self.addressAsPerId = addressAsPerId
                
                self.voterId = voterId
                
                self.passport = passport
                
                self.email = email
                
                self.fathersName = fathersName
                
                self.drivingLicense = drivingLicense
                
                self.mothersName = mothersName
                
                self.dob = dob
                
            }

            public func duplicate() -> UserPersonalInfoInDetails {
                let dict = self.dictionary!
                let copy = UserPersonalInfoInDetails(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                emailVerified = try container.decode(Bool.self, forKey: .emailVerified)
                
                
                
                
                firstName = try container.decode(String.self, forKey: .firstName)
                
                
                
                
                gender = try container.decode(String.self, forKey: .gender)
                
                
                
                
                do {
                    middleName = try container.decode(String.self, forKey: .middleName)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                mobileVerified = try container.decode(Bool.self, forKey: .mobileVerified)
                
                
                
                
                do {
                    pan = try container.decode(String.self, forKey: .pan)
                
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
                
                
                
                phone = try container.decode(String.self, forKey: .phone)
                
                
                
                
                addressAsPerId = try container.decode(KYCAddress.self, forKey: .addressAsPerId)
                
                
                
                
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
                
                
                
                email = try container.decode(String.self, forKey: .email)
                
                
                
                
                do {
                    fathersName = try container.decode(String.self, forKey: .fathersName)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    drivingLicense = try container.decode(String.self, forKey: .drivingLicense)
                
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
                
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(emailVerified, forKey: .emailVerified)
                
                
                
                
                try? container.encodeIfPresent(firstName, forKey: .firstName)
                
                
                
                
                try? container.encodeIfPresent(gender, forKey: .gender)
                
                
                
                
                try? container.encode(middleName, forKey: .middleName)
                
                
                
                
                try? container.encodeIfPresent(mobileVerified, forKey: .mobileVerified)
                
                
                
                
                try? container.encode(pan, forKey: .pan)
                
                
                
                
                try? container.encode(lastName, forKey: .lastName)
                
                
                
                
                try? container.encodeIfPresent(phone, forKey: .phone)
                
                
                
                
                try? container.encodeIfPresent(addressAsPerId, forKey: .addressAsPerId)
                
                
                
                
                try? container.encode(voterId, forKey: .voterId)
                
                
                
                
                try? container.encode(passport, forKey: .passport)
                
                
                
                
                try? container.encodeIfPresent(email, forKey: .email)
                
                
                
                
                try? container.encode(fathersName, forKey: .fathersName)
                
                
                
                
                try? container.encode(drivingLicense, forKey: .drivingLicense)
                
                
                
                
                try? container.encode(mothersName, forKey: .mothersName)
                
                
                
                
                try? container.encode(dob, forKey: .dob)
                
                
            }
            
        }
        
        /*
            Model: CustomerOnboardingRequest
            Used By: Payment
        */
        class CustomerOnboardingRequest: Codable {
            
            public var businessInfo: BusinessDetails?
            
            public var source: String
            
            public var device: DeviceDetails?
            
            public var marketplaceInfo: MarketplaceInfo?
            
            public var personalInfo: UserPersonalInfoInDetails
            
            public var aggregator: String
            

            public enum CodingKeys: String, CodingKey {
                
                case businessInfo = "business_info"
                
                case source = "source"
                
                case device = "device"
                
                case marketplaceInfo = "marketplace_info"
                
                case personalInfo = "personal_info"
                
                case aggregator = "aggregator"
                
            }

            public init(aggregator: String, businessInfo: BusinessDetails?, device: DeviceDetails?, marketplaceInfo: MarketplaceInfo?, personalInfo: UserPersonalInfoInDetails, source: String) {
                
                self.businessInfo = businessInfo
                
                self.source = source
                
                self.device = device
                
                self.marketplaceInfo = marketplaceInfo
                
                self.personalInfo = personalInfo
                
                self.aggregator = aggregator
                
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
                
                
                
                source = try container.decode(String.self, forKey: .source)
                
                
                
                
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
                
                
                
                personalInfo = try container.decode(UserPersonalInfoInDetails.self, forKey: .personalInfo)
                
                
                
                
                aggregator = try container.decode(String.self, forKey: .aggregator)
                
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(businessInfo, forKey: .businessInfo)
                
                
                
                
                try? container.encodeIfPresent(source, forKey: .source)
                
                
                
                
                try? container.encodeIfPresent(device, forKey: .device)
                
                
                
                
                try? container.encodeIfPresent(marketplaceInfo, forKey: .marketplaceInfo)
                
                
                
                
                try? container.encodeIfPresent(personalInfo, forKey: .personalInfo)
                
                
                
                
                try? container.encodeIfPresent(aggregator, forKey: .aggregator)
                
                
            }
            
        }
        
        /*
            Model: OnboardSummary
            Used By: Payment
        */
        class OnboardSummary: Codable {
            
            public var redirectUrl: String
            
            public var status: Bool
            
            public var session: [String: Any]
            

            public enum CodingKeys: String, CodingKey {
                
                case redirectUrl = "redirect_url"
                
                case status = "status"
                
                case session = "session"
                
            }

            public init(redirectUrl: String, session: [String: Any], status: Bool) {
                
                self.redirectUrl = redirectUrl
                
                self.status = status
                
                self.session = session
                
            }

            public func duplicate() -> OnboardSummary {
                let dict = self.dictionary!
                let copy = OnboardSummary(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                redirectUrl = try container.decode(String.self, forKey: .redirectUrl)
                
                
                
                
                status = try container.decode(Bool.self, forKey: .status)
                
                
                
                
                session = try container.decode([String: Any].self, forKey: .session)
                
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(redirectUrl, forKey: .redirectUrl)
                
                
                
                
                try? container.encodeIfPresent(status, forKey: .status)
                
                
                
                
                try? container.encodeIfPresent(session, forKey: .session)
                
                
            }
            
        }
        
        /*
            Model: CustomerOnboardingResponse
            Used By: Payment
        */
        class CustomerOnboardingResponse: Codable {
            
            public var success: Bool
            
            public var data: [OnboardSummary]
            

            public enum CodingKeys: String, CodingKey {
                
                case success = "success"
                
                case data = "data"
                
            }

            public init(data: [OnboardSummary], success: Bool) {
                
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
                
                
                
                
                data = try container.decode([OnboardSummary].self, forKey: .data)
                
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(success, forKey: .success)
                
                
                
                
                try? container.encodeIfPresent(data, forKey: .data)
                
                
            }
            
        }
        
}
