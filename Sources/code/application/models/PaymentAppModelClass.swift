import Foundation

import Foundation
public extension ApplicationClient {
    /*
         Model: AggregatorConfigDetail
         Used By: Payment
     */
    class AggregatorConfigDetail: Codable {
        public var secret: String

        public var configType: String

        public var userId: String?

        public var pin: String?

        public var verifyApi: String?

        public var sdk: Bool?

        public var api: String?

        public var merchantKey: String?

        public var merchantId: String?

        public var key: String

        public enum CodingKeys: String, CodingKey {
            case secret

            case configType = "config_type"

            case userId = "user_id"

            case pin

            case verifyApi = "verify_api"

            case sdk

            case api

            case merchantKey = "merchant_key"

            case merchantId = "merchant_id"

            case key
        }

        public init(api: String?, configType: String, key: String, merchantId: String?, merchantKey: String?, pin: String?, sdk: Bool?, secret: String, userId: String?, verifyApi: String?) {
            self.secret = secret

            self.configType = configType

            self.userId = userId

            self.pin = pin

            self.verifyApi = verifyApi

            self.sdk = sdk

            self.api = api

            self.merchantKey = merchantKey

            self.merchantId = merchantId

            self.key = key
        }

        public func duplicate() -> AggregatorConfigDetail {
            let dict = self.dictionary!
            let copy = AggregatorConfigDetail(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            secret = try container.decode(String.self, forKey: .secret)

            configType = try container.decode(String.self, forKey: .configType)

            do {
                userId = try container.decode(String.self, forKey: .userId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                pin = try container.decode(String.self, forKey: .pin)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                verifyApi = try container.decode(String.self, forKey: .verifyApi)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                sdk = try container.decode(Bool.self, forKey: .sdk)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                api = try container.decode(String.self, forKey: .api)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                merchantKey = try container.decode(String.self, forKey: .merchantKey)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                merchantId = try container.decode(String.self, forKey: .merchantId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            key = try container.decode(String.self, forKey: .key)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(secret, forKey: .secret)

            try? container.encodeIfPresent(configType, forKey: .configType)

            try? container.encode(userId, forKey: .userId)

            try? container.encode(pin, forKey: .pin)

            try? container.encode(verifyApi, forKey: .verifyApi)

            try? container.encode(sdk, forKey: .sdk)

            try? container.encode(api, forKey: .api)

            try? container.encode(merchantKey, forKey: .merchantKey)

            try? container.encode(merchantId, forKey: .merchantId)

            try? container.encodeIfPresent(key, forKey: .key)
        }
    }

    /*
         Model: AggregatorsConfigDetailResponse
         Used By: Payment
     */
    class AggregatorsConfigDetailResponse: Codable {
        public var payumoney: AggregatorConfigDetail?

        public var success: Bool

        public var juspay: AggregatorConfigDetail?

        public var ccavenue: AggregatorConfigDetail?

        public var rupifi: AggregatorConfigDetail?

        public var simpl: AggregatorConfigDetail?

        public var stripe: AggregatorConfigDetail?

        public var env: String

        public var razorpay: AggregatorConfigDetail?

        public var mswipe: AggregatorConfigDetail?

        public enum CodingKeys: String, CodingKey {
            case payumoney

            case success

            case juspay

            case ccavenue

            case rupifi

            case simpl

            case stripe

            case env

            case razorpay

            case mswipe
        }

        public init(ccavenue: AggregatorConfigDetail?, env: String, juspay: AggregatorConfigDetail?, mswipe: AggregatorConfigDetail?, payumoney: AggregatorConfigDetail?, razorpay: AggregatorConfigDetail?, rupifi: AggregatorConfigDetail?, simpl: AggregatorConfigDetail?, stripe: AggregatorConfigDetail?, success: Bool) {
            self.payumoney = payumoney

            self.success = success

            self.juspay = juspay

            self.ccavenue = ccavenue

            self.rupifi = rupifi

            self.simpl = simpl

            self.stripe = stripe

            self.env = env

            self.razorpay = razorpay

            self.mswipe = mswipe
        }

        public func duplicate() -> AggregatorsConfigDetailResponse {
            let dict = self.dictionary!
            let copy = AggregatorsConfigDetailResponse(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                payumoney = try container.decode(AggregatorConfigDetail.self, forKey: .payumoney)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            success = try container.decode(Bool.self, forKey: .success)

            do {
                juspay = try container.decode(AggregatorConfigDetail.self, forKey: .juspay)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                ccavenue = try container.decode(AggregatorConfigDetail.self, forKey: .ccavenue)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                rupifi = try container.decode(AggregatorConfigDetail.self, forKey: .rupifi)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                simpl = try container.decode(AggregatorConfigDetail.self, forKey: .simpl)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                stripe = try container.decode(AggregatorConfigDetail.self, forKey: .stripe)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            env = try container.decode(String.self, forKey: .env)

            do {
                razorpay = try container.decode(AggregatorConfigDetail.self, forKey: .razorpay)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                mswipe = try container.decode(AggregatorConfigDetail.self, forKey: .mswipe)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(payumoney, forKey: .payumoney)

            try? container.encodeIfPresent(success, forKey: .success)

            try? container.encodeIfPresent(juspay, forKey: .juspay)

            try? container.encodeIfPresent(ccavenue, forKey: .ccavenue)

            try? container.encodeIfPresent(rupifi, forKey: .rupifi)

            try? container.encodeIfPresent(simpl, forKey: .simpl)

            try? container.encodeIfPresent(stripe, forKey: .stripe)

            try? container.encodeIfPresent(env, forKey: .env)

            try? container.encodeIfPresent(razorpay, forKey: .razorpay)

            try? container.encodeIfPresent(mswipe, forKey: .mswipe)
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
            case description

            case code
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
            case success

            case error
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
        public var cardId: String

        public var nickname: String?

        public var nameOnCard: String?

        public var refresh: Bool?

        public enum CodingKeys: String, CodingKey {
            case cardId = "card_id"

            case nickname

            case nameOnCard = "name_on_card"

            case refresh
        }

        public init(cardId: String, nameOnCard: String?, nickname: String?, refresh: Bool?) {
            self.cardId = cardId

            self.nickname = nickname

            self.nameOnCard = nameOnCard

            self.refresh = refresh
        }

        public func duplicate() -> AttachCardRequest {
            let dict = self.dictionary!
            let copy = AttachCardRequest(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            cardId = try container.decode(String.self, forKey: .cardId)

            do {
                nickname = try container.decode(String.self, forKey: .nickname)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                nameOnCard = try container.decode(String.self, forKey: .nameOnCard)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                refresh = try container.decode(Bool.self, forKey: .refresh)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encode(cardId, forKey: .cardId)

            try? container.encodeIfPresent(nickname, forKey: .nickname)

            try? container.encodeIfPresent(nameOnCard, forKey: .nameOnCard)

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
            case message

            case success

            case data
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
            } catch {}

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
        public var aggregator: String

        public var customerId: String?

        public var api: String?

        public enum CodingKeys: String, CodingKey {
            case aggregator

            case customerId = "customer_id"

            case api
        }

        public init(aggregator: String, api: String?, customerId: String?) {
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
            } catch {}

            do {
                api = try container.decode(String.self, forKey: .api)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
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
        public var message: String

        public var cards: CardPaymentGateway

        public var success: Bool

        public enum CodingKeys: String, CodingKey {
            case message

            case cards

            case success
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
        public var cardIssuer: String?

        public var nickname: String?

        public var cardName: String?

        public var cardToken: String?

        public var cardType: String?

        public var cardReference: String?

        public var cardBrand: String?

        public var expired: Bool?

        public var expYear: Int?

        public var cardId: String?

        public var cardBrandImage: String?

        public var cardNumber: String?

        public var cardFingerprint: String?

        public var cardIsin: String?

        public var aggregatorName: String

        public var expMonth: Int?

        public enum CodingKeys: String, CodingKey {
            case cardIssuer = "card_issuer"

            case nickname

            case cardName = "card_name"

            case cardToken = "card_token"

            case cardType = "card_type"

            case cardReference = "card_reference"

            case cardBrand = "card_brand"

            case expired

            case expYear = "exp_year"

            case cardId = "card_id"

            case cardBrandImage = "card_brand_image"

            case cardNumber = "card_number"

            case cardFingerprint = "card_fingerprint"

            case cardIsin = "card_isin"

            case aggregatorName = "aggregator_name"

            case expMonth = "exp_month"
        }

        public init(aggregatorName: String, cardBrand: String?, cardBrandImage: String?, cardFingerprint: String?, cardId: String?, cardIsin: String?, cardIssuer: String?, cardName: String?, cardNumber: String?, cardReference: String?, cardToken: String?, cardType: String?, expired: Bool?, expMonth: Int?, expYear: Int?, nickname: String?) {
            self.cardIssuer = cardIssuer

            self.nickname = nickname

            self.cardName = cardName

            self.cardToken = cardToken

            self.cardType = cardType

            self.cardReference = cardReference

            self.cardBrand = cardBrand

            self.expired = expired

            self.expYear = expYear

            self.cardId = cardId

            self.cardBrandImage = cardBrandImage

            self.cardNumber = cardNumber

            self.cardFingerprint = cardFingerprint

            self.cardIsin = cardIsin

            self.aggregatorName = aggregatorName

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
                cardIssuer = try container.decode(String.self, forKey: .cardIssuer)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                nickname = try container.decode(String.self, forKey: .nickname)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                cardName = try container.decode(String.self, forKey: .cardName)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                cardToken = try container.decode(String.self, forKey: .cardToken)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                cardType = try container.decode(String.self, forKey: .cardType)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                cardReference = try container.decode(String.self, forKey: .cardReference)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                cardBrand = try container.decode(String.self, forKey: .cardBrand)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                expired = try container.decode(Bool.self, forKey: .expired)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                expYear = try container.decode(Int.self, forKey: .expYear)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                cardId = try container.decode(String.self, forKey: .cardId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                cardBrandImage = try container.decode(String.self, forKey: .cardBrandImage)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                cardNumber = try container.decode(String.self, forKey: .cardNumber)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                cardFingerprint = try container.decode(String.self, forKey: .cardFingerprint)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                cardIsin = try container.decode(String.self, forKey: .cardIsin)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            aggregatorName = try container.decode(String.self, forKey: .aggregatorName)

            do {
                expMonth = try container.decode(Int.self, forKey: .expMonth)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encode(cardIssuer, forKey: .cardIssuer)

            try? container.encode(nickname, forKey: .nickname)

            try? container.encode(cardName, forKey: .cardName)

            try? container.encode(cardToken, forKey: .cardToken)

            try? container.encode(cardType, forKey: .cardType)

            try? container.encode(cardReference, forKey: .cardReference)

            try? container.encode(cardBrand, forKey: .cardBrand)

            try? container.encode(expired, forKey: .expired)

            try? container.encode(expYear, forKey: .expYear)

            try? container.encode(cardId, forKey: .cardId)

            try? container.encode(cardBrandImage, forKey: .cardBrandImage)

            try? container.encode(cardNumber, forKey: .cardNumber)

            try? container.encode(cardFingerprint, forKey: .cardFingerprint)

            try? container.encode(cardIsin, forKey: .cardIsin)

            try? container.encodeIfPresent(aggregatorName, forKey: .aggregatorName)

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
            case message

            case success

            case data
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
            } catch {}
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
            case message

            case success
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
            } catch {}

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

            case payload

            case aggregator

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
            case message

            case success

            case data
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
        public var transactionToken: String?

        public var aggregator: String

        public var verified: Bool?

        public var orderId: String

        public var amount: Int

        public enum CodingKeys: String, CodingKey {
            case transactionToken = "transaction_token"

            case aggregator

            case verified

            case orderId = "order_id"

            case amount
        }

        public init(aggregator: String, amount: Int, orderId: String, transactionToken: String?, verified: Bool?) {
            self.transactionToken = transactionToken

            self.aggregator = aggregator

            self.verified = verified

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
                transactionToken = try container.decode(String.self, forKey: .transactionToken)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            aggregator = try container.decode(String.self, forKey: .aggregator)

            do {
                verified = try container.decode(Bool.self, forKey: .verified)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            orderId = try container.decode(String.self, forKey: .orderId)

            amount = try container.decode(Int.self, forKey: .amount)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encode(transactionToken, forKey: .transactionToken)

            try? container.encodeIfPresent(aggregator, forKey: .aggregator)

            try? container.encode(verified, forKey: .verified)

            try? container.encodeIfPresent(orderId, forKey: .orderId)

            try? container.encode(amount, forKey: .amount)
        }
    }

    /*
         Model: ChargeCustomerResponse
         Used By: Payment
     */
    class ChargeCustomerResponse: Codable {
        public var success: Bool

        public var aggregator: String

        public var status: String

        public var message: String

        public var cartId: String?

        public var orderId: String

        public var deliveryAddressId: String?

        public enum CodingKeys: String, CodingKey {
            case success

            case aggregator

            case status

            case message

            case cartId = "cart_id"

            case orderId = "order_id"

            case deliveryAddressId = "delivery_address_id"
        }

        public init(aggregator: String, cartId: String?, deliveryAddressId: String?, message: String, orderId: String, status: String, success: Bool) {
            self.success = success

            self.aggregator = aggregator

            self.status = status

            self.message = message

            self.cartId = cartId

            self.orderId = orderId

            self.deliveryAddressId = deliveryAddressId
        }

        public func duplicate() -> ChargeCustomerResponse {
            let dict = self.dictionary!
            let copy = ChargeCustomerResponse(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            success = try container.decode(Bool.self, forKey: .success)

            aggregator = try container.decode(String.self, forKey: .aggregator)

            status = try container.decode(String.self, forKey: .status)

            message = try container.decode(String.self, forKey: .message)

            do {
                cartId = try container.decode(String.self, forKey: .cartId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            orderId = try container.decode(String.self, forKey: .orderId)

            do {
                deliveryAddressId = try container.decode(String.self, forKey: .deliveryAddressId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(success, forKey: .success)

            try? container.encodeIfPresent(aggregator, forKey: .aggregator)

            try? container.encodeIfPresent(status, forKey: .status)

            try? container.encodeIfPresent(message, forKey: .message)

            try? container.encode(cartId, forKey: .cartId)

            try? container.encodeIfPresent(orderId, forKey: .orderId)

            try? container.encode(deliveryAddressId, forKey: .deliveryAddressId)
        }
    }

    /*
         Model: PaymentInitializationRequest
         Used By: Payment
     */
    class PaymentInitializationRequest: Codable {
        public var email: String

        public var contact: String

        public var aggregator: String

        public var vpa: String?

        public var currency: String

        public var merchantOrderId: String

        public var razorpayPaymentId: String?

        public var timeout: Int?

        public var customerId: String

        public var method: String

        public var orderId: String

        public var amount: Int

        public enum CodingKeys: String, CodingKey {
            case email

            case contact

            case aggregator

            case vpa

            case currency

            case merchantOrderId = "merchant_order_id"

            case razorpayPaymentId = "razorpay_payment_id"

            case timeout

            case customerId = "customer_id"

            case method

            case orderId = "order_id"

            case amount
        }

        public init(aggregator: String, amount: Int, contact: String, currency: String, customerId: String, email: String, merchantOrderId: String, method: String, orderId: String, razorpayPaymentId: String?, timeout: Int?, vpa: String?) {
            self.email = email

            self.contact = contact

            self.aggregator = aggregator

            self.vpa = vpa

            self.currency = currency

            self.merchantOrderId = merchantOrderId

            self.razorpayPaymentId = razorpayPaymentId

            self.timeout = timeout

            self.customerId = customerId

            self.method = method

            self.orderId = orderId

            self.amount = amount
        }

        public func duplicate() -> PaymentInitializationRequest {
            let dict = self.dictionary!
            let copy = PaymentInitializationRequest(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            email = try container.decode(String.self, forKey: .email)

            contact = try container.decode(String.self, forKey: .contact)

            aggregator = try container.decode(String.self, forKey: .aggregator)

            do {
                vpa = try container.decode(String.self, forKey: .vpa)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            currency = try container.decode(String.self, forKey: .currency)

            merchantOrderId = try container.decode(String.self, forKey: .merchantOrderId)

            do {
                razorpayPaymentId = try container.decode(String.self, forKey: .razorpayPaymentId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                timeout = try container.decode(Int.self, forKey: .timeout)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            customerId = try container.decode(String.self, forKey: .customerId)

            method = try container.decode(String.self, forKey: .method)

            orderId = try container.decode(String.self, forKey: .orderId)

            amount = try container.decode(Int.self, forKey: .amount)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(email, forKey: .email)

            try? container.encodeIfPresent(contact, forKey: .contact)

            try? container.encodeIfPresent(aggregator, forKey: .aggregator)

            try? container.encode(vpa, forKey: .vpa)

            try? container.encodeIfPresent(currency, forKey: .currency)

            try? container.encodeIfPresent(merchantOrderId, forKey: .merchantOrderId)

            try? container.encode(razorpayPaymentId, forKey: .razorpayPaymentId)

            try? container.encode(timeout, forKey: .timeout)

            try? container.encodeIfPresent(customerId, forKey: .customerId)

            try? container.encodeIfPresent(method, forKey: .method)

            try? container.encodeIfPresent(orderId, forKey: .orderId)

            try? container.encode(amount, forKey: .amount)
        }
    }

    /*
         Model: PaymentInitializationResponse
         Used By: Payment
     */
    class PaymentInitializationResponse: Codable {
        public var success: Bool

        public var bqrImage: String?

        public var vpa: String?

        public var aggregator: String

        public var pollingUrl: String

        public var currency: String?

        public var status: String?

        public var aggregatorOrderId: String?

        public var upiPollUrl: String?

        public var merchantOrderId: String

        public var razorpayPaymentId: String?

        public var timeout: Int?

        public var customerId: String?

        public var method: String

        public var virtualId: String?

        public var amount: Int?

        public enum CodingKeys: String, CodingKey {
            case success

            case bqrImage = "bqr_image"

            case vpa

            case aggregator

            case pollingUrl = "polling_url"

            case currency

            case status

            case aggregatorOrderId = "aggregator_order_id"

            case upiPollUrl = "upi_poll_url"

            case merchantOrderId = "merchant_order_id"

            case razorpayPaymentId = "razorpay_payment_id"

            case timeout

            case customerId = "customer_id"

            case method

            case virtualId = "virtual_id"

            case amount
        }

        public init(aggregator: String, aggregatorOrderId: String?, amount: Int?, bqrImage: String?, currency: String?, customerId: String?, merchantOrderId: String, method: String, pollingUrl: String, razorpayPaymentId: String?, status: String?, success: Bool, timeout: Int?, upiPollUrl: String?, virtualId: String?, vpa: String?) {
            self.success = success

            self.bqrImage = bqrImage

            self.vpa = vpa

            self.aggregator = aggregator

            self.pollingUrl = pollingUrl

            self.currency = currency

            self.status = status

            self.aggregatorOrderId = aggregatorOrderId

            self.upiPollUrl = upiPollUrl

            self.merchantOrderId = merchantOrderId

            self.razorpayPaymentId = razorpayPaymentId

            self.timeout = timeout

            self.customerId = customerId

            self.method = method

            self.virtualId = virtualId

            self.amount = amount
        }

        public func duplicate() -> PaymentInitializationResponse {
            let dict = self.dictionary!
            let copy = PaymentInitializationResponse(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            success = try container.decode(Bool.self, forKey: .success)

            do {
                bqrImage = try container.decode(String.self, forKey: .bqrImage)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                vpa = try container.decode(String.self, forKey: .vpa)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            aggregator = try container.decode(String.self, forKey: .aggregator)

            pollingUrl = try container.decode(String.self, forKey: .pollingUrl)

            do {
                currency = try container.decode(String.self, forKey: .currency)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                status = try container.decode(String.self, forKey: .status)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                aggregatorOrderId = try container.decode(String.self, forKey: .aggregatorOrderId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                upiPollUrl = try container.decode(String.self, forKey: .upiPollUrl)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            merchantOrderId = try container.decode(String.self, forKey: .merchantOrderId)

            do {
                razorpayPaymentId = try container.decode(String.self, forKey: .razorpayPaymentId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                timeout = try container.decode(Int.self, forKey: .timeout)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                customerId = try container.decode(String.self, forKey: .customerId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            method = try container.decode(String.self, forKey: .method)

            do {
                virtualId = try container.decode(String.self, forKey: .virtualId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                amount = try container.decode(Int.self, forKey: .amount)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(success, forKey: .success)

            try? container.encode(bqrImage, forKey: .bqrImage)

            try? container.encode(vpa, forKey: .vpa)

            try? container.encodeIfPresent(aggregator, forKey: .aggregator)

            try? container.encodeIfPresent(pollingUrl, forKey: .pollingUrl)

            try? container.encode(currency, forKey: .currency)

            try? container.encodeIfPresent(status, forKey: .status)

            try? container.encodeIfPresent(aggregatorOrderId, forKey: .aggregatorOrderId)

            try? container.encode(upiPollUrl, forKey: .upiPollUrl)

            try? container.encodeIfPresent(merchantOrderId, forKey: .merchantOrderId)

            try? container.encode(razorpayPaymentId, forKey: .razorpayPaymentId)

            try? container.encode(timeout, forKey: .timeout)

            try? container.encode(customerId, forKey: .customerId)

            try? container.encodeIfPresent(method, forKey: .method)

            try? container.encode(virtualId, forKey: .virtualId)

            try? container.encode(amount, forKey: .amount)
        }
    }

    /*
         Model: PaymentStatusUpdateRequest
         Used By: Payment
     */
    class PaymentStatusUpdateRequest: Codable {
        public var email: String

        public var contact: String

        public var aggregator: String

        public var vpa: String

        public var currency: String

        public var status: String

        public var merchantOrderId: String

        public var customerId: String

        public var method: String

        public var orderId: String

        public var amount: Int

        public enum CodingKeys: String, CodingKey {
            case email

            case contact

            case aggregator

            case vpa

            case currency

            case status

            case merchantOrderId = "merchant_order_id"

            case customerId = "customer_id"

            case method

            case orderId = "order_id"

            case amount
        }

        public init(aggregator: String, amount: Int, contact: String, currency: String, customerId: String, email: String, merchantOrderId: String, method: String, orderId: String, status: String, vpa: String) {
            self.email = email

            self.contact = contact

            self.aggregator = aggregator

            self.vpa = vpa

            self.currency = currency

            self.status = status

            self.merchantOrderId = merchantOrderId

            self.customerId = customerId

            self.method = method

            self.orderId = orderId

            self.amount = amount
        }

        public func duplicate() -> PaymentStatusUpdateRequest {
            let dict = self.dictionary!
            let copy = PaymentStatusUpdateRequest(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            email = try container.decode(String.self, forKey: .email)

            contact = try container.decode(String.self, forKey: .contact)

            aggregator = try container.decode(String.self, forKey: .aggregator)

            vpa = try container.decode(String.self, forKey: .vpa)

            currency = try container.decode(String.self, forKey: .currency)

            status = try container.decode(String.self, forKey: .status)

            merchantOrderId = try container.decode(String.self, forKey: .merchantOrderId)

            customerId = try container.decode(String.self, forKey: .customerId)

            method = try container.decode(String.self, forKey: .method)

            orderId = try container.decode(String.self, forKey: .orderId)

            amount = try container.decode(Int.self, forKey: .amount)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(email, forKey: .email)

            try? container.encodeIfPresent(contact, forKey: .contact)

            try? container.encodeIfPresent(aggregator, forKey: .aggregator)

            try? container.encodeIfPresent(vpa, forKey: .vpa)

            try? container.encodeIfPresent(currency, forKey: .currency)

            try? container.encodeIfPresent(status, forKey: .status)

            try? container.encodeIfPresent(merchantOrderId, forKey: .merchantOrderId)

            try? container.encodeIfPresent(customerId, forKey: .customerId)

            try? container.encodeIfPresent(method, forKey: .method)

            try? container.encodeIfPresent(orderId, forKey: .orderId)

            try? container.encode(amount, forKey: .amount)
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

            case status

            case retry
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
        public var large: String

        public var small: String

        public enum CodingKeys: String, CodingKey {
            case large

            case small
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
            case code

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
            } catch {}

            do {
                packageName = try container.decode(String.self, forKey: .packageName)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
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
        public var code: String?

        public var packageName: String?

        public var logos: PaymentModeLogo?

        public var displayName: String?

        public enum CodingKeys: String, CodingKey {
            case code

            case packageName = "package_name"

            case logos

            case displayName = "display_name"
        }

        public init(code: String?, displayName: String?, logos: PaymentModeLogo?, packageName: String?) {
            self.code = code

            self.packageName = packageName

            self.logos = logos

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
                code = try container.decode(String.self, forKey: .code)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                packageName = try container.decode(String.self, forKey: .packageName)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                logos = try container.decode(PaymentModeLogo.self, forKey: .logos)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                displayName = try container.decode(String.self, forKey: .displayName)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encode(code, forKey: .code)

            try? container.encode(packageName, forKey: .packageName)

            try? container.encode(logos, forKey: .logos)

            try? container.encode(displayName, forKey: .displayName)
        }
    }

    /*
         Model: PaymentModeList
         Used By: Payment
     */
    class PaymentModeList: Codable {
        public var logoUrl: PaymentModeLogo?

        public var cardNumber: String?

        public var cardIsin: String?

        public var retryCount: Int?

        public var cardIssuer: String?

        public var nickname: String?

        public var aggregatorName: String

        public var cardBrandImage: String?

        public var fyndVpa: String?

        public var expMonth: Int?

        public var intentFlow: Bool?

        public var intentAppErrorDictList: [IntentAppErrorList]?

        public var intentAppErrorList: [String]?

        public var code: String?

        public var cardType: String?

        public var cardReference: String?

        public var expired: Bool?

        public var expYear: Int?

        public var timeout: Int?

        public var cardName: String?

        public var intentApp: [IntentApp]?

        public var cardToken: String?

        public var displayName: String?

        public var cardId: String?

        public var cardFingerprint: String?

        public var name: String?

        public var merchantCode: String?

        public var displayPriority: Int?

        public var cardBrand: String?

        public enum CodingKeys: String, CodingKey {
            case logoUrl = "logo_url"

            case cardNumber = "card_number"

            case cardIsin = "card_isin"

            case retryCount = "retry_count"

            case cardIssuer = "card_issuer"

            case nickname

            case aggregatorName = "aggregator_name"

            case cardBrandImage = "card_brand_image"

            case fyndVpa = "fynd_vpa"

            case expMonth = "exp_month"

            case intentFlow = "intent_flow"

            case intentAppErrorDictList = "intent_app_error_dict_list"

            case intentAppErrorList = "intent_app_error_list"

            case code

            case cardType = "card_type"

            case cardReference = "card_reference"

            case expired

            case expYear = "exp_year"

            case timeout

            case cardName = "card_name"

            case intentApp = "intent_app"

            case cardToken = "card_token"

            case displayName = "display_name"

            case cardId = "card_id"

            case cardFingerprint = "card_fingerprint"

            case name

            case merchantCode = "merchant_code"

            case displayPriority = "display_priority"

            case cardBrand = "card_brand"
        }

        public init(aggregatorName: String, cardBrand: String?, cardBrandImage: String?, cardFingerprint: String?, cardId: String?, cardIsin: String?, cardIssuer: String?, cardName: String?, cardNumber: String?, cardReference: String?, cardToken: String?, cardType: String?, code: String?, displayName: String?, displayPriority: Int?, expired: Bool?, expMonth: Int?, expYear: Int?, fyndVpa: String?, intentApp: [IntentApp]?, intentAppErrorDictList: [IntentAppErrorList]?, intentAppErrorList: [String]?, intentFlow: Bool?, logoUrl: PaymentModeLogo?, merchantCode: String?, name: String?, nickname: String?, retryCount: Int?, timeout: Int?) {
            self.logoUrl = logoUrl

            self.cardNumber = cardNumber

            self.cardIsin = cardIsin

            self.retryCount = retryCount

            self.cardIssuer = cardIssuer

            self.nickname = nickname

            self.aggregatorName = aggregatorName

            self.cardBrandImage = cardBrandImage

            self.fyndVpa = fyndVpa

            self.expMonth = expMonth

            self.intentFlow = intentFlow

            self.intentAppErrorDictList = intentAppErrorDictList

            self.intentAppErrorList = intentAppErrorList

            self.code = code

            self.cardType = cardType

            self.cardReference = cardReference

            self.expired = expired

            self.expYear = expYear

            self.timeout = timeout

            self.cardName = cardName

            self.intentApp = intentApp

            self.cardToken = cardToken

            self.displayName = displayName

            self.cardId = cardId

            self.cardFingerprint = cardFingerprint

            self.name = name

            self.merchantCode = merchantCode

            self.displayPriority = displayPriority

            self.cardBrand = cardBrand
        }

        public func duplicate() -> PaymentModeList {
            let dict = self.dictionary!
            let copy = PaymentModeList(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                logoUrl = try container.decode(PaymentModeLogo.self, forKey: .logoUrl)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                cardNumber = try container.decode(String.self, forKey: .cardNumber)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                cardIsin = try container.decode(String.self, forKey: .cardIsin)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                retryCount = try container.decode(Int.self, forKey: .retryCount)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                cardIssuer = try container.decode(String.self, forKey: .cardIssuer)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                nickname = try container.decode(String.self, forKey: .nickname)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            aggregatorName = try container.decode(String.self, forKey: .aggregatorName)

            do {
                cardBrandImage = try container.decode(String.self, forKey: .cardBrandImage)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                fyndVpa = try container.decode(String.self, forKey: .fyndVpa)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                expMonth = try container.decode(Int.self, forKey: .expMonth)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                intentFlow = try container.decode(Bool.self, forKey: .intentFlow)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                intentAppErrorDictList = try container.decode([IntentAppErrorList].self, forKey: .intentAppErrorDictList)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                intentAppErrorList = try container.decode([String].self, forKey: .intentAppErrorList)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                code = try container.decode(String.self, forKey: .code)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                cardType = try container.decode(String.self, forKey: .cardType)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                cardReference = try container.decode(String.self, forKey: .cardReference)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                expired = try container.decode(Bool.self, forKey: .expired)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                expYear = try container.decode(Int.self, forKey: .expYear)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                timeout = try container.decode(Int.self, forKey: .timeout)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                cardName = try container.decode(String.self, forKey: .cardName)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                intentApp = try container.decode([IntentApp].self, forKey: .intentApp)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                cardToken = try container.decode(String.self, forKey: .cardToken)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                displayName = try container.decode(String.self, forKey: .displayName)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                cardId = try container.decode(String.self, forKey: .cardId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                cardFingerprint = try container.decode(String.self, forKey: .cardFingerprint)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                name = try container.decode(String.self, forKey: .name)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                merchantCode = try container.decode(String.self, forKey: .merchantCode)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                displayPriority = try container.decode(Int.self, forKey: .displayPriority)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                cardBrand = try container.decode(String.self, forKey: .cardBrand)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encode(logoUrl, forKey: .logoUrl)

            try? container.encode(cardNumber, forKey: .cardNumber)

            try? container.encode(cardIsin, forKey: .cardIsin)

            try? container.encode(retryCount, forKey: .retryCount)

            try? container.encode(cardIssuer, forKey: .cardIssuer)

            try? container.encode(nickname, forKey: .nickname)

            try? container.encodeIfPresent(aggregatorName, forKey: .aggregatorName)

            try? container.encode(cardBrandImage, forKey: .cardBrandImage)

            try? container.encode(fyndVpa, forKey: .fyndVpa)

            try? container.encode(expMonth, forKey: .expMonth)

            try? container.encode(intentFlow, forKey: .intentFlow)

            try? container.encode(intentAppErrorDictList, forKey: .intentAppErrorDictList)

            try? container.encode(intentAppErrorList, forKey: .intentAppErrorList)

            try? container.encode(code, forKey: .code)

            try? container.encode(cardType, forKey: .cardType)

            try? container.encode(cardReference, forKey: .cardReference)

            try? container.encode(expired, forKey: .expired)

            try? container.encode(expYear, forKey: .expYear)

            try? container.encode(timeout, forKey: .timeout)

            try? container.encode(cardName, forKey: .cardName)

            try? container.encode(intentApp, forKey: .intentApp)

            try? container.encode(cardToken, forKey: .cardToken)

            try? container.encode(displayName, forKey: .displayName)

            try? container.encode(cardId, forKey: .cardId)

            try? container.encode(cardFingerprint, forKey: .cardFingerprint)

            try? container.encode(name, forKey: .name)

            try? container.encode(merchantCode, forKey: .merchantCode)

            try? container.encode(displayPriority, forKey: .displayPriority)

            try? container.encode(cardBrand, forKey: .cardBrand)
        }
    }

    /*
         Model: RootPaymentMode
         Used By: Payment
     */
    class RootPaymentMode: Codable {
        public var aggregatorName: String?

        public var displayName: String

        public var addCardEnabled: Bool?

        public var list: [PaymentModeList]?

        public var name: String

        public var displayPriority: Int

        public var anonymousEnable: Bool?

        public enum CodingKeys: String, CodingKey {
            case aggregatorName = "aggregator_name"

            case displayName = "display_name"

            case addCardEnabled = "add_card_enabled"

            case list

            case name

            case displayPriority = "display_priority"

            case anonymousEnable = "anonymous_enable"
        }

        public init(addCardEnabled: Bool?, aggregatorName: String?, anonymousEnable: Bool?, displayName: String, displayPriority: Int, list: [PaymentModeList]?, name: String) {
            self.aggregatorName = aggregatorName

            self.displayName = displayName

            self.addCardEnabled = addCardEnabled

            self.list = list

            self.name = name

            self.displayPriority = displayPriority

            self.anonymousEnable = anonymousEnable
        }

        public func duplicate() -> RootPaymentMode {
            let dict = self.dictionary!
            let copy = RootPaymentMode(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                aggregatorName = try container.decode(String.self, forKey: .aggregatorName)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            displayName = try container.decode(String.self, forKey: .displayName)

            do {
                addCardEnabled = try container.decode(Bool.self, forKey: .addCardEnabled)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                list = try container.decode([PaymentModeList].self, forKey: .list)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            name = try container.decode(String.self, forKey: .name)

            displayPriority = try container.decode(Int.self, forKey: .displayPriority)

            do {
                anonymousEnable = try container.decode(Bool.self, forKey: .anonymousEnable)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encode(aggregatorName, forKey: .aggregatorName)

            try? container.encodeIfPresent(displayName, forKey: .displayName)

            try? container.encode(addCardEnabled, forKey: .addCardEnabled)

            try? container.encodeIfPresent(list, forKey: .list)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(displayPriority, forKey: .displayPriority)

            try? container.encode(anonymousEnable, forKey: .anonymousEnable)
        }
    }

    /*
         Model: AggregatorRoute
         Used By: Payment
     */
    class AggregatorRoute: Codable {
        public var apiLink: String?

        public var paymentFlow: String?

        public var paymentFlowData: String?

        public var data: [String: Any]?

        public enum CodingKeys: String, CodingKey {
            case apiLink = "api_link"

            case paymentFlow = "payment_flow"

            case paymentFlowData = "payment_flow_data"

            case data
        }

        public init(apiLink: String?, data: [String: Any]?, paymentFlow: String?, paymentFlowData: String?) {
            self.apiLink = apiLink

            self.paymentFlow = paymentFlow

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
                apiLink = try container.decode(String.self, forKey: .apiLink)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                paymentFlow = try container.decode(String.self, forKey: .paymentFlow)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                paymentFlowData = try container.decode(String.self, forKey: .paymentFlowData)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                data = try container.decode([String: Any].self, forKey: .data)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encode(apiLink, forKey: .apiLink)

            try? container.encode(paymentFlow, forKey: .paymentFlow)

            try? container.encode(paymentFlowData, forKey: .paymentFlowData)

            try? container.encode(data, forKey: .data)
        }
    }

    /*
         Model: PaymentFlow
         Used By: Payment
     */
    class PaymentFlow: Codable {
        public var epaylater: AggregatorRoute?

        public var juspay: AggregatorRoute?

        public var upiRazorpay: AggregatorRoute?

        public var ccavenue: AggregatorRoute?

        public var rupifi: AggregatorRoute?

        public var jiopay: AggregatorRoute?

        public var simpl: AggregatorRoute?

        public var stripe: AggregatorRoute?

        public var payubiz: AggregatorRoute?

        public var fynd: AggregatorRoute?

        public var razorpay: AggregatorRoute?

        public var bqrRazorpay: AggregatorRoute?

        public var mswipe: AggregatorRoute?

        public enum CodingKeys: String, CodingKey {
            case epaylater

            case juspay

            case upiRazorpay = "upi_razorpay"

            case ccavenue

            case rupifi

            case jiopay

            case simpl

            case stripe

            case payubiz

            case fynd

            case razorpay

            case bqrRazorpay = "bqr_razorpay"

            case mswipe
        }

        public init(bqrRazorpay: AggregatorRoute?, ccavenue: AggregatorRoute?, epaylater: AggregatorRoute?, fynd: AggregatorRoute?, jiopay: AggregatorRoute?, juspay: AggregatorRoute?, mswipe: AggregatorRoute?, payubiz: AggregatorRoute?, razorpay: AggregatorRoute?, rupifi: AggregatorRoute?, simpl: AggregatorRoute?, stripe: AggregatorRoute?, upiRazorpay: AggregatorRoute?) {
            self.epaylater = epaylater

            self.juspay = juspay

            self.upiRazorpay = upiRazorpay

            self.ccavenue = ccavenue

            self.rupifi = rupifi

            self.jiopay = jiopay

            self.simpl = simpl

            self.stripe = stripe

            self.payubiz = payubiz

            self.fynd = fynd

            self.razorpay = razorpay

            self.bqrRazorpay = bqrRazorpay

            self.mswipe = mswipe
        }

        public func duplicate() -> PaymentFlow {
            let dict = self.dictionary!
            let copy = PaymentFlow(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                epaylater = try container.decode(AggregatorRoute.self, forKey: .epaylater)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                juspay = try container.decode(AggregatorRoute.self, forKey: .juspay)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                upiRazorpay = try container.decode(AggregatorRoute.self, forKey: .upiRazorpay)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                ccavenue = try container.decode(AggregatorRoute.self, forKey: .ccavenue)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                rupifi = try container.decode(AggregatorRoute.self, forKey: .rupifi)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                jiopay = try container.decode(AggregatorRoute.self, forKey: .jiopay)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                simpl = try container.decode(AggregatorRoute.self, forKey: .simpl)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                stripe = try container.decode(AggregatorRoute.self, forKey: .stripe)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                payubiz = try container.decode(AggregatorRoute.self, forKey: .payubiz)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                fynd = try container.decode(AggregatorRoute.self, forKey: .fynd)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                razorpay = try container.decode(AggregatorRoute.self, forKey: .razorpay)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                bqrRazorpay = try container.decode(AggregatorRoute.self, forKey: .bqrRazorpay)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                mswipe = try container.decode(AggregatorRoute.self, forKey: .mswipe)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encode(epaylater, forKey: .epaylater)

            try? container.encode(juspay, forKey: .juspay)

            try? container.encode(upiRazorpay, forKey: .upiRazorpay)

            try? container.encode(ccavenue, forKey: .ccavenue)

            try? container.encode(rupifi, forKey: .rupifi)

            try? container.encode(jiopay, forKey: .jiopay)

            try? container.encode(simpl, forKey: .simpl)

            try? container.encode(stripe, forKey: .stripe)

            try? container.encode(payubiz, forKey: .payubiz)

            try? container.encode(fynd, forKey: .fynd)

            try? container.encode(razorpay, forKey: .razorpay)

            try? container.encode(bqrRazorpay, forKey: .bqrRazorpay)

            try? container.encode(mswipe, forKey: .mswipe)
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

            case success
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
        public var status: String?

        public var kycUrl: String?

        public enum CodingKeys: String, CodingKey {
            case status

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
            } catch {}

            do {
                kycUrl = try container.decode(String.self, forKey: .kycUrl)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
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
            case success

            case data
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

        public var message: String?

        public var display: Bool

        public enum CodingKeys: String, CodingKey {
            case status

            case message

            case display
        }

        public init(display: Bool, message: String?, status: String?) {
            self.status = status

            self.message = message

            self.display = display
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
            } catch {}

            do {
                message = try container.decode(String.self, forKey: .message)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            display = try container.decode(Bool.self, forKey: .display)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(status, forKey: .status)

            try? container.encodeIfPresent(message, forKey: .message)

            try? container.encodeIfPresent(display, forKey: .display)
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
            case success

            case data
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
        public var status: Bool

        public var message: String

        public enum CodingKeys: String, CodingKey {
            case status

            case message
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
            case success

            case data
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
        public var displayName: String?

        public var logoLarge: String

        public var name: String

        public var id: Int

        public var logoSmall: String

        public enum CodingKeys: String, CodingKey {
            case displayName = "display_name"

            case logoLarge = "logo_large"

            case name

            case id

            case logoSmall = "logo_small"
        }

        public init(displayName: String?, id: Int, logoLarge: String, logoSmall: String, name: String) {
            self.displayName = displayName

            self.logoLarge = logoLarge

            self.name = name

            self.id = id

            self.logoSmall = logoSmall
        }

        public func duplicate() -> TransferItemsDetails {
            let dict = self.dictionary!
            let copy = TransferItemsDetails(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                displayName = try container.decode(String.self, forKey: .displayName)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            logoLarge = try container.decode(String.self, forKey: .logoLarge)

            name = try container.decode(String.self, forKey: .name)

            id = try container.decode(Int.self, forKey: .id)

            logoSmall = try container.decode(String.self, forKey: .logoSmall)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(displayName, forKey: .displayName)

            try? container.encodeIfPresent(logoLarge, forKey: .logoLarge)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(logoSmall, forKey: .logoSmall)
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
            case items

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
            } catch {}

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
            case data
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
            case enable

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
            case success
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
            } catch {}
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
        public var mobile: Bool?

        public var title: String

        public var id: Int

        public var createdOn: String

        public var accountHolder: String

        public var address: String

        public var modifiedOn: String

        public var beneficiaryId: String

        public var accountNo: String

        public var email: String

        public var transferMode: String

        public var ifscCode: String

        public var subtitle: String

        public var branchName: Bool?

        public var comment: Bool?

        public var displayName: String

        public var delightsUserName: String?

        public var isActive: Bool

        public var bankName: String

        public enum CodingKeys: String, CodingKey {
            case mobile

            case title

            case id

            case createdOn = "created_on"

            case accountHolder = "account_holder"

            case address

            case modifiedOn = "modified_on"

            case beneficiaryId = "beneficiary_id"

            case accountNo = "account_no"

            case email

            case transferMode = "transfer_mode"

            case ifscCode = "ifsc_code"

            case subtitle

            case branchName = "branch_name"

            case comment

            case displayName = "display_name"

            case delightsUserName = "delights_user_name"

            case isActive = "is_active"

            case bankName = "bank_name"
        }

        public init(accountHolder: String, accountNo: String, address: String, bankName: String, beneficiaryId: String, branchName: Bool?, comment: Bool?, createdOn: String, delightsUserName: String?, displayName: String, email: String, id: Int, ifscCode: String, isActive: Bool, mobile: Bool?, modifiedOn: String, subtitle: String, title: String, transferMode: String) {
            self.mobile = mobile

            self.title = title

            self.id = id

            self.createdOn = createdOn

            self.accountHolder = accountHolder

            self.address = address

            self.modifiedOn = modifiedOn

            self.beneficiaryId = beneficiaryId

            self.accountNo = accountNo

            self.email = email

            self.transferMode = transferMode

            self.ifscCode = ifscCode

            self.subtitle = subtitle

            self.branchName = branchName

            self.comment = comment

            self.displayName = displayName

            self.delightsUserName = delightsUserName

            self.isActive = isActive

            self.bankName = bankName
        }

        public func duplicate() -> OrderBeneficiaryDetails {
            let dict = self.dictionary!
            let copy = OrderBeneficiaryDetails(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                mobile = try container.decode(Bool.self, forKey: .mobile)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            title = try container.decode(String.self, forKey: .title)

            id = try container.decode(Int.self, forKey: .id)

            createdOn = try container.decode(String.self, forKey: .createdOn)

            accountHolder = try container.decode(String.self, forKey: .accountHolder)

            address = try container.decode(String.self, forKey: .address)

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            beneficiaryId = try container.decode(String.self, forKey: .beneficiaryId)

            accountNo = try container.decode(String.self, forKey: .accountNo)

            email = try container.decode(String.self, forKey: .email)

            transferMode = try container.decode(String.self, forKey: .transferMode)

            ifscCode = try container.decode(String.self, forKey: .ifscCode)

            subtitle = try container.decode(String.self, forKey: .subtitle)

            do {
                branchName = try container.decode(Bool.self, forKey: .branchName)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                comment = try container.decode(Bool.self, forKey: .comment)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            displayName = try container.decode(String.self, forKey: .displayName)

            do {
                delightsUserName = try container.decode(String.self, forKey: .delightsUserName)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            isActive = try container.decode(Bool.self, forKey: .isActive)

            bankName = try container.decode(String.self, forKey: .bankName)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(mobile, forKey: .mobile)

            try? container.encodeIfPresent(title, forKey: .title)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(createdOn, forKey: .createdOn)

            try? container.encodeIfPresent(accountHolder, forKey: .accountHolder)

            try? container.encodeIfPresent(address, forKey: .address)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(beneficiaryId, forKey: .beneficiaryId)

            try? container.encodeIfPresent(accountNo, forKey: .accountNo)

            try? container.encodeIfPresent(email, forKey: .email)

            try? container.encodeIfPresent(transferMode, forKey: .transferMode)

            try? container.encodeIfPresent(ifscCode, forKey: .ifscCode)

            try? container.encodeIfPresent(subtitle, forKey: .subtitle)

            try? container.encodeIfPresent(branchName, forKey: .branchName)

            try? container.encodeIfPresent(comment, forKey: .comment)

            try? container.encodeIfPresent(displayName, forKey: .displayName)

            try? container.encode(delightsUserName, forKey: .delightsUserName)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(bankName, forKey: .bankName)
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
            case beneficiaries

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
            } catch {}

            do {
                showBeneficiaryDetails = try container.decode(Bool.self, forKey: .showBeneficiaryDetails)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
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
        public var description: String

        public var code: String

        public var success: Bool

        public enum CodingKeys: String, CodingKey {
            case description

            case code

            case success
        }

        public init(code: String, description: String, success: Bool) {
            self.description = description

            self.code = code

            self.success = success
        }

        public func duplicate() -> NotFoundResourceError {
            let dict = self.dictionary!
            let copy = NotFoundResourceError(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            description = try container.decode(String.self, forKey: .description)

            code = try container.decode(String.self, forKey: .code)

            success = try container.decode(Bool.self, forKey: .success)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(description, forKey: .description)

            try? container.encodeIfPresent(code, forKey: .code)

            try? container.encodeIfPresent(success, forKey: .success)
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

            case success

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
            } catch {}

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

        public var code: String

        public var success: Bool

        public enum CodingKeys: String, CodingKey {
            case description

            case code

            case success
        }

        public init(code: String, description: String, success: Bool) {
            self.description = description

            self.code = code

            self.success = success
        }

        public func duplicate() -> ErrorCodeDescription {
            let dict = self.dictionary!
            let copy = ErrorCodeDescription(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            description = try container.decode(String.self, forKey: .description)

            code = try container.decode(String.self, forKey: .code)

            success = try container.decode(Bool.self, forKey: .success)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(description, forKey: .description)

            try? container.encodeIfPresent(code, forKey: .code)

            try? container.encodeIfPresent(success, forKey: .success)
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

            case otp

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
            case message

            case success
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
            } catch {}
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

        public var description: String

        public var success: String

        public enum CodingKeys: String, CodingKey {
            case isVerifiedFlag = "is_verified_flag"

            case description

            case success
        }

        public init(description: String, isVerifiedFlag: Bool, success: String) {
            self.isVerifiedFlag = isVerifiedFlag

            self.description = description

            self.success = success
        }

        public func duplicate() -> WrongOtpError {
            let dict = self.dictionary!
            let copy = WrongOtpError(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            isVerifiedFlag = try container.decode(Bool.self, forKey: .isVerifiedFlag)

            description = try container.decode(String.self, forKey: .description)

            success = try container.decode(String.self, forKey: .success)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(isVerifiedFlag, forKey: .isVerifiedFlag)

            try? container.encodeIfPresent(description, forKey: .description)

            try? container.encodeIfPresent(success, forKey: .success)
        }
    }

    /*
         Model: BeneficiaryModeDetails
         Used By: Payment
     */
    class BeneficiaryModeDetails: Codable {
        public var mobile: String

        public var address: String?

        public var accountNo: String

        public var email: String

        public var vpa: String?

        public var bankName: String

        public var branchName: String

        public var comment: String?

        public var wallet: String?

        public var ifscCode: String

        public var accountHolder: String

        public enum CodingKeys: String, CodingKey {
            case mobile

            case address

            case accountNo = "account_no"

            case email

            case vpa

            case bankName = "bank_name"

            case branchName = "branch_name"

            case comment

            case wallet

            case ifscCode = "ifsc_code"

            case accountHolder = "account_holder"
        }

        public init(accountHolder: String, accountNo: String, address: String?, bankName: String, branchName: String, comment: String?, email: String, ifscCode: String, mobile: String, vpa: String?, wallet: String?) {
            self.mobile = mobile

            self.address = address

            self.accountNo = accountNo

            self.email = email

            self.vpa = vpa

            self.bankName = bankName

            self.branchName = branchName

            self.comment = comment

            self.wallet = wallet

            self.ifscCode = ifscCode

            self.accountHolder = accountHolder
        }

        public func duplicate() -> BeneficiaryModeDetails {
            let dict = self.dictionary!
            let copy = BeneficiaryModeDetails(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            mobile = try container.decode(String.self, forKey: .mobile)

            do {
                address = try container.decode(String.self, forKey: .address)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            accountNo = try container.decode(String.self, forKey: .accountNo)

            email = try container.decode(String.self, forKey: .email)

            do {
                vpa = try container.decode(String.self, forKey: .vpa)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            bankName = try container.decode(String.self, forKey: .bankName)

            branchName = try container.decode(String.self, forKey: .branchName)

            do {
                comment = try container.decode(String.self, forKey: .comment)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                wallet = try container.decode(String.self, forKey: .wallet)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            ifscCode = try container.decode(String.self, forKey: .ifscCode)

            accountHolder = try container.decode(String.self, forKey: .accountHolder)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(mobile, forKey: .mobile)

            try? container.encodeIfPresent(address, forKey: .address)

            try? container.encodeIfPresent(accountNo, forKey: .accountNo)

            try? container.encodeIfPresent(email, forKey: .email)

            try? container.encode(vpa, forKey: .vpa)

            try? container.encodeIfPresent(bankName, forKey: .bankName)

            try? container.encodeIfPresent(branchName, forKey: .branchName)

            try? container.encodeIfPresent(comment, forKey: .comment)

            try? container.encode(wallet, forKey: .wallet)

            try? container.encodeIfPresent(ifscCode, forKey: .ifscCode)

            try? container.encodeIfPresent(accountHolder, forKey: .accountHolder)
        }
    }

    /*
         Model: AddBeneficiaryDetailsRequest
         Used By: Payment
     */
    class AddBeneficiaryDetailsRequest: Codable {
        public var details: BeneficiaryModeDetails

        public var transferMode: String

        public var delights: Bool

        public var requestId: String?

        public var shipmentId: String

        public var otp: String?

        public var orderId: String

        public enum CodingKeys: String, CodingKey {
            case details

            case transferMode = "transfer_mode"

            case delights

            case requestId = "request_id"

            case shipmentId = "shipment_id"

            case otp

            case orderId = "order_id"
        }

        public init(delights: Bool, details: BeneficiaryModeDetails, orderId: String, otp: String?, requestId: String?, shipmentId: String, transferMode: String) {
            self.details = details

            self.transferMode = transferMode

            self.delights = delights

            self.requestId = requestId

            self.shipmentId = shipmentId

            self.otp = otp

            self.orderId = orderId
        }

        public func duplicate() -> AddBeneficiaryDetailsRequest {
            let dict = self.dictionary!
            let copy = AddBeneficiaryDetailsRequest(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            details = try container.decode(BeneficiaryModeDetails.self, forKey: .details)

            transferMode = try container.decode(String.self, forKey: .transferMode)

            delights = try container.decode(Bool.self, forKey: .delights)

            do {
                requestId = try container.decode(String.self, forKey: .requestId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            shipmentId = try container.decode(String.self, forKey: .shipmentId)

            do {
                otp = try container.decode(String.self, forKey: .otp)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            orderId = try container.decode(String.self, forKey: .orderId)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(details, forKey: .details)

            try? container.encodeIfPresent(transferMode, forKey: .transferMode)

            try? container.encodeIfPresent(delights, forKey: .delights)

            try? container.encodeIfPresent(requestId, forKey: .requestId)

            try? container.encodeIfPresent(shipmentId, forKey: .shipmentId)

            try? container.encodeIfPresent(otp, forKey: .otp)

            try? container.encodeIfPresent(orderId, forKey: .orderId)
        }
    }

    /*
         Model: RefundAccountResponse
         Used By: Payment
     */
    class RefundAccountResponse: Codable {
        public var isVerifiedFlag: Bool?

        public var message: String

        public var success: Bool

        public var data: [String: Any]?

        public enum CodingKeys: String, CodingKey {
            case isVerifiedFlag = "is_verified_flag"

            case message

            case success

            case data
        }

        public init(data: [String: Any]?, isVerifiedFlag: Bool?, message: String, success: Bool) {
            self.isVerifiedFlag = isVerifiedFlag

            self.message = message

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

            do {
                isVerifiedFlag = try container.decode(Bool.self, forKey: .isVerifiedFlag)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            message = try container.decode(String.self, forKey: .message)

            success = try container.decode(Bool.self, forKey: .success)

            do {
                data = try container.decode([String: Any].self, forKey: .data)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(isVerifiedFlag, forKey: .isVerifiedFlag)

            try? container.encodeIfPresent(message, forKey: .message)

            try? container.encodeIfPresent(success, forKey: .success)

            try? container.encodeIfPresent(data, forKey: .data)
        }
    }

    /*
         Model: BankDetailsForOTP
         Used By: Payment
     */
    class BankDetailsForOTP: Codable {
        public var accountHolder: String

        public var accountNo: String

        public var branchName: String

        public var ifscCode: String

        public var bankName: String

        public enum CodingKeys: String, CodingKey {
            case accountHolder = "account_holder"

            case accountNo = "account_no"

            case branchName = "branch_name"

            case ifscCode = "ifsc_code"

            case bankName = "bank_name"
        }

        public init(accountHolder: String, accountNo: String, bankName: String, branchName: String, ifscCode: String) {
            self.accountHolder = accountHolder

            self.accountNo = accountNo

            self.branchName = branchName

            self.ifscCode = ifscCode

            self.bankName = bankName
        }

        public func duplicate() -> BankDetailsForOTP {
            let dict = self.dictionary!
            let copy = BankDetailsForOTP(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            accountHolder = try container.decode(String.self, forKey: .accountHolder)

            accountNo = try container.decode(String.self, forKey: .accountNo)

            branchName = try container.decode(String.self, forKey: .branchName)

            ifscCode = try container.decode(String.self, forKey: .ifscCode)

            bankName = try container.decode(String.self, forKey: .bankName)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(accountHolder, forKey: .accountHolder)

            try? container.encodeIfPresent(accountNo, forKey: .accountNo)

            try? container.encodeIfPresent(branchName, forKey: .branchName)

            try? container.encodeIfPresent(ifscCode, forKey: .ifscCode)

            try? container.encodeIfPresent(bankName, forKey: .bankName)
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
            case details

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

            case mobile
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

            case success

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
            } catch {}

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
            case success

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
            } catch {}

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

        public var formattedValue: String

        public var value: Double

        public enum CodingKeys: String, CodingKey {
            case currency

            case formattedValue = "formatted_value"

            case value
        }

        public init(currency: String, formattedValue: String, value: Double) {
            self.currency = currency

            self.formattedValue = formattedValue

            self.value = value
        }

        public func duplicate() -> BalanceDetails {
            let dict = self.dictionary!
            let copy = BalanceDetails(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            currency = try container.decode(String.self, forKey: .currency)

            formattedValue = try container.decode(String.self, forKey: .formattedValue)

            value = try container.decode(Double.self, forKey: .value)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(currency, forKey: .currency)

            try? container.encodeIfPresent(formattedValue, forKey: .formattedValue)

            try? container.encodeIfPresent(value, forKey: .value)
        }
    }

    /*
         Model: CreditSummary
         Used By: Payment
     */
    class CreditSummary: Codable {
        public var merchantCustomerRefId: String

        public var status: String

        public var balance: BalanceDetails?

        public var statusMessage: String

        public enum CodingKeys: String, CodingKey {
            case merchantCustomerRefId = "merchant_customer_ref_id"

            case status

            case balance

            case statusMessage = "status_message"
        }

        public init(balance: BalanceDetails?, merchantCustomerRefId: String, status: String, statusMessage: String) {
            self.merchantCustomerRefId = merchantCustomerRefId

            self.status = status

            self.balance = balance

            self.statusMessage = statusMessage
        }

        public func duplicate() -> CreditSummary {
            let dict = self.dictionary!
            let copy = CreditSummary(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            merchantCustomerRefId = try container.decode(String.self, forKey: .merchantCustomerRefId)

            status = try container.decode(String.self, forKey: .status)

            do {
                balance = try container.decode(BalanceDetails.self, forKey: .balance)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            statusMessage = try container.decode(String.self, forKey: .statusMessage)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(merchantCustomerRefId, forKey: .merchantCustomerRefId)

            try? container.encodeIfPresent(status, forKey: .status)

            try? container.encodeIfPresent(balance, forKey: .balance)

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
            case success

            case data
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
            } catch {}
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
            case status

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
            case success

            case data
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
        public var status: Bool

        public var isRegistered: Bool

        public var signupUrl: String

        public enum CodingKeys: String, CodingKey {
            case status

            case isRegistered = "is_registered"

            case signupUrl = "signup_url"
        }

        public init(isRegistered: Bool, signupUrl: String, status: Bool) {
            self.status = status

            self.isRegistered = isRegistered

            self.signupUrl = signupUrl
        }

        public func duplicate() -> CreditDetail {
            let dict = self.dictionary!
            let copy = CreditDetail(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            status = try container.decode(Bool.self, forKey: .status)

            isRegistered = try container.decode(Bool.self, forKey: .isRegistered)

            signupUrl = try container.decode(String.self, forKey: .signupUrl)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(status, forKey: .status)

            try? container.encodeIfPresent(isRegistered, forKey: .isRegistered)

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
            case success

            case data
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
        public var ownershipType: String?

        public var city: String

        public var state: String

        public var pincode: String

        public var addressline1: String

        public var landMark: String?

        public var addressline2: String?

        public enum CodingKeys: String, CodingKey {
            case ownershipType = "ownership_type"

            case city

            case state

            case pincode

            case addressline1

            case landMark = "land_mark"

            case addressline2
        }

        public init(addressline1: String, addressline2: String?, city: String, landMark: String?, ownershipType: String?, pincode: String, state: String) {
            self.ownershipType = ownershipType

            self.city = city

            self.state = state

            self.pincode = pincode

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

            do {
                ownershipType = try container.decode(String.self, forKey: .ownershipType)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            city = try container.decode(String.self, forKey: .city)

            state = try container.decode(String.self, forKey: .state)

            pincode = try container.decode(String.self, forKey: .pincode)

            addressline1 = try container.decode(String.self, forKey: .addressline1)

            do {
                landMark = try container.decode(String.self, forKey: .landMark)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                addressline2 = try container.decode(String.self, forKey: .addressline2)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encode(ownershipType, forKey: .ownershipType)

            try? container.encodeIfPresent(city, forKey: .city)

            try? container.encodeIfPresent(state, forKey: .state)

            try? container.encodeIfPresent(pincode, forKey: .pincode)

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
        public var vintage: String?

        public var pan: String?

        public var address: KYCAddress?

        public var shopAndEstablishment: [String: Any]?

        public var businessOwnershipType: String?

        public var fssai: String?

        public var gstin: String?

        public var fda: String?

        public var entityType: String?

        public var businessType: String?

        public var name: String?

        public enum CodingKeys: String, CodingKey {
            case vintage

            case pan

            case address

            case shopAndEstablishment = "shop_and_establishment"

            case businessOwnershipType = "business_ownership_type"

            case fssai

            case gstin

            case fda

            case entityType = "entity_type"

            case businessType = "business_type"

            case name
        }

        public init(address: KYCAddress?, businessOwnershipType: String?, businessType: String?, entityType: String?, fda: String?, fssai: String?, gstin: String?, name: String?, pan: String?, shopAndEstablishment: [String: Any]?, vintage: String?) {
            self.vintage = vintage

            self.pan = pan

            self.address = address

            self.shopAndEstablishment = shopAndEstablishment

            self.businessOwnershipType = businessOwnershipType

            self.fssai = fssai

            self.gstin = gstin

            self.fda = fda

            self.entityType = entityType

            self.businessType = businessType

            self.name = name
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
            } catch {}

            do {
                pan = try container.decode(String.self, forKey: .pan)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                address = try container.decode(KYCAddress.self, forKey: .address)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                shopAndEstablishment = try container.decode([String: Any].self, forKey: .shopAndEstablishment)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                businessOwnershipType = try container.decode(String.self, forKey: .businessOwnershipType)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                fssai = try container.decode(String.self, forKey: .fssai)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                gstin = try container.decode(String.self, forKey: .gstin)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                fda = try container.decode(String.self, forKey: .fda)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                entityType = try container.decode(String.self, forKey: .entityType)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                businessType = try container.decode(String.self, forKey: .businessType)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                name = try container.decode(String.self, forKey: .name)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encode(vintage, forKey: .vintage)

            try? container.encode(pan, forKey: .pan)

            try? container.encodeIfPresent(address, forKey: .address)

            try? container.encodeIfPresent(shopAndEstablishment, forKey: .shopAndEstablishment)

            try? container.encode(businessOwnershipType, forKey: .businessOwnershipType)

            try? container.encode(fssai, forKey: .fssai)

            try? container.encode(gstin, forKey: .gstin)

            try? container.encode(fda, forKey: .fda)

            try? container.encode(entityType, forKey: .entityType)

            try? container.encode(businessType, forKey: .businessType)

            try? container.encode(name, forKey: .name)
        }
    }

    /*
         Model: UserPersonalInfoInDetails
         Used By: Payment
     */
    class UserPersonalInfoInDetails: Codable {
        public var dob: String

        public var pan: String?

        public var email: String

        public var passport: String?

        public var phone: String

        public var voterId: String?

        public var emailVerified: Bool

        public var addressAsPerId: KYCAddress

        public var mothersName: String?

        public var lastName: String?

        public var mobileVerified: Bool

        public var firstName: String

        public var fathersName: String?

        public var drivingLicense: String?

        public var middleName: String?

        public var gender: String?

        public enum CodingKeys: String, CodingKey {
            case dob

            case pan

            case email

            case passport

            case phone

            case voterId = "voter_id"

            case emailVerified = "email_verified"

            case addressAsPerId = "address_as_per_id"

            case mothersName = "mothers_name"

            case lastName = "last_name"

            case mobileVerified = "mobile_verified"

            case firstName = "first_name"

            case fathersName = "fathers_name"

            case drivingLicense = "driving_license"

            case middleName = "middle_name"

            case gender
        }

        public init(addressAsPerId: KYCAddress, dob: String, drivingLicense: String?, email: String, emailVerified: Bool, fathersName: String?, firstName: String, gender: String?, lastName: String?, middleName: String?, mobileVerified: Bool, mothersName: String?, pan: String?, passport: String?, phone: String, voterId: String?) {
            self.dob = dob

            self.pan = pan

            self.email = email

            self.passport = passport

            self.phone = phone

            self.voterId = voterId

            self.emailVerified = emailVerified

            self.addressAsPerId = addressAsPerId

            self.mothersName = mothersName

            self.lastName = lastName

            self.mobileVerified = mobileVerified

            self.firstName = firstName

            self.fathersName = fathersName

            self.drivingLicense = drivingLicense

            self.middleName = middleName

            self.gender = gender
        }

        public func duplicate() -> UserPersonalInfoInDetails {
            let dict = self.dictionary!
            let copy = UserPersonalInfoInDetails(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            dob = try container.decode(String.self, forKey: .dob)

            do {
                pan = try container.decode(String.self, forKey: .pan)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            email = try container.decode(String.self, forKey: .email)

            do {
                passport = try container.decode(String.self, forKey: .passport)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            phone = try container.decode(String.self, forKey: .phone)

            do {
                voterId = try container.decode(String.self, forKey: .voterId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            emailVerified = try container.decode(Bool.self, forKey: .emailVerified)

            addressAsPerId = try container.decode(KYCAddress.self, forKey: .addressAsPerId)

            do {
                mothersName = try container.decode(String.self, forKey: .mothersName)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                lastName = try container.decode(String.self, forKey: .lastName)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            mobileVerified = try container.decode(Bool.self, forKey: .mobileVerified)

            firstName = try container.decode(String.self, forKey: .firstName)

            do {
                fathersName = try container.decode(String.self, forKey: .fathersName)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                drivingLicense = try container.decode(String.self, forKey: .drivingLicense)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                middleName = try container.decode(String.self, forKey: .middleName)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                gender = try container.decode(String.self, forKey: .gender)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encode(dob, forKey: .dob)

            try? container.encode(pan, forKey: .pan)

            try? container.encodeIfPresent(email, forKey: .email)

            try? container.encode(passport, forKey: .passport)

            try? container.encodeIfPresent(phone, forKey: .phone)

            try? container.encode(voterId, forKey: .voterId)

            try? container.encodeIfPresent(emailVerified, forKey: .emailVerified)

            try? container.encodeIfPresent(addressAsPerId, forKey: .addressAsPerId)

            try? container.encode(mothersName, forKey: .mothersName)

            try? container.encode(lastName, forKey: .lastName)

            try? container.encodeIfPresent(mobileVerified, forKey: .mobileVerified)

            try? container.encodeIfPresent(firstName, forKey: .firstName)

            try? container.encode(fathersName, forKey: .fathersName)

            try? container.encode(drivingLicense, forKey: .drivingLicense)

            try? container.encode(middleName, forKey: .middleName)

            try? container.encode(gender, forKey: .gender)
        }
    }

    /*
         Model: MarketplaceInfo
         Used By: Payment
     */
    class MarketplaceInfo: Codable {
        public var dateOfJoining: String?

        public var membershipId: String

        public var name: String

        public enum CodingKeys: String, CodingKey {
            case dateOfJoining = "date_of_joining"

            case membershipId = "membership_id"

            case name
        }

        public init(dateOfJoining: String?, membershipId: String, name: String) {
            self.dateOfJoining = dateOfJoining

            self.membershipId = membershipId

            self.name = name
        }

        public func duplicate() -> MarketplaceInfo {
            let dict = self.dictionary!
            let copy = MarketplaceInfo(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                dateOfJoining = try container.decode(String.self, forKey: .dateOfJoining)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            membershipId = try container.decode(String.self, forKey: .membershipId)

            name = try container.decode(String.self, forKey: .name)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encode(dateOfJoining, forKey: .dateOfJoining)

            try? container.encodeIfPresent(membershipId, forKey: .membershipId)

            try? container.encodeIfPresent(name, forKey: .name)
        }
    }

    /*
         Model: DeviceDetails
         Used By: Payment
     */
    class DeviceDetails: Codable {
        public var deviceModel: String?

        public var deviceType: String?

        public var os: String?

        public var identifierType: String?

        public var osVersion: String?

        public var deviceMake: String?

        public var identificationNumber: String?

        public enum CodingKeys: String, CodingKey {
            case deviceModel = "device_model"

            case deviceType = "device_type"

            case os

            case identifierType = "identifier_type"

            case osVersion = "os_version"

            case deviceMake = "device_make"

            case identificationNumber = "identification_number"
        }

        public init(deviceMake: String?, deviceModel: String?, deviceType: String?, identificationNumber: String?, identifierType: String?, os: String?, osVersion: String?) {
            self.deviceModel = deviceModel

            self.deviceType = deviceType

            self.os = os

            self.identifierType = identifierType

            self.osVersion = osVersion

            self.deviceMake = deviceMake

            self.identificationNumber = identificationNumber
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
            } catch {}

            do {
                deviceType = try container.decode(String.self, forKey: .deviceType)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                os = try container.decode(String.self, forKey: .os)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                identifierType = try container.decode(String.self, forKey: .identifierType)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                osVersion = try container.decode(String.self, forKey: .osVersion)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                deviceMake = try container.decode(String.self, forKey: .deviceMake)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                identificationNumber = try container.decode(String.self, forKey: .identificationNumber)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encode(deviceModel, forKey: .deviceModel)

            try? container.encode(deviceType, forKey: .deviceType)

            try? container.encode(os, forKey: .os)

            try? container.encode(identifierType, forKey: .identifierType)

            try? container.encode(osVersion, forKey: .osVersion)

            try? container.encode(deviceMake, forKey: .deviceMake)

            try? container.encode(identificationNumber, forKey: .identificationNumber)
        }
    }

    /*
         Model: CustomerOnboardingRequest
         Used By: Payment
     */
    class CustomerOnboardingRequest: Codable {
        public var businessInfo: BusinessDetails?

        public var aggregator: String

        public var personalInfo: UserPersonalInfoInDetails

        public var marketplaceInfo: MarketplaceInfo?

        public var device: DeviceDetails?

        public var source: String

        public enum CodingKeys: String, CodingKey {
            case businessInfo = "business_info"

            case aggregator

            case personalInfo = "personal_info"

            case marketplaceInfo = "marketplace_info"

            case device

            case source
        }

        public init(aggregator: String, businessInfo: BusinessDetails?, device: DeviceDetails?, marketplaceInfo: MarketplaceInfo?, personalInfo: UserPersonalInfoInDetails, source: String) {
            self.businessInfo = businessInfo

            self.aggregator = aggregator

            self.personalInfo = personalInfo

            self.marketplaceInfo = marketplaceInfo

            self.device = device

            self.source = source
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
            } catch {}

            aggregator = try container.decode(String.self, forKey: .aggregator)

            personalInfo = try container.decode(UserPersonalInfoInDetails.self, forKey: .personalInfo)

            do {
                marketplaceInfo = try container.decode(MarketplaceInfo.self, forKey: .marketplaceInfo)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                device = try container.decode(DeviceDetails.self, forKey: .device)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            source = try container.decode(String.self, forKey: .source)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(businessInfo, forKey: .businessInfo)

            try? container.encodeIfPresent(aggregator, forKey: .aggregator)

            try? container.encodeIfPresent(personalInfo, forKey: .personalInfo)

            try? container.encodeIfPresent(marketplaceInfo, forKey: .marketplaceInfo)

            try? container.encodeIfPresent(device, forKey: .device)

            try? container.encodeIfPresent(source, forKey: .source)
        }
    }

    /*
         Model: OnboardSummary
         Used By: Payment
     */
    class OnboardSummary: Codable {
        public var status: Bool

        public var redirectUrl: String

        public var session: [String: Any]

        public enum CodingKeys: String, CodingKey {
            case status

            case redirectUrl = "redirect_url"

            case session
        }

        public init(redirectUrl: String, session: [String: Any], status: Bool) {
            self.status = status

            self.redirectUrl = redirectUrl

            self.session = session
        }

        public func duplicate() -> OnboardSummary {
            let dict = self.dictionary!
            let copy = OnboardSummary(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            status = try container.decode(Bool.self, forKey: .status)

            redirectUrl = try container.decode(String.self, forKey: .redirectUrl)

            session = try container.decode([String: Any].self, forKey: .session)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(status, forKey: .status)

            try? container.encodeIfPresent(redirectUrl, forKey: .redirectUrl)

            try? container.encodeIfPresent(session, forKey: .session)
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
            case success

            case data
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
