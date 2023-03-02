

import Foundation
public extension PlatformClient {
    /*
         Model: AffiliateBag
         Used By: Order
     */

    class AffiliateBag: Codable {
        public var identifier: [String: Any]

        public var avlQty: Int

        public var amountPaid: Double

        public var affiliateMeta: [String: Any]

        public var affiliateStoreId: String

        public var hsnCodeId: String

        public var sku: String

        public var itemId: Int

        public var modifiedOn: String

        public var pdfLinks: MarketPlacePdf?

        public var priceEffective: Double

        public var fyndStoreId: String

        public var itemSize: String

        public var storeId: Int

        public var unitPrice: Double

        public var quantity: Int

        public var sellerIdentifier: String

        public var companyId: Int

        public var discount: Double

        public var deliveryCharge: Double

        public var priceMarked: Double

        public var id: String

        public var transferPrice: Int

        public enum CodingKeys: String, CodingKey {
            case identifier

            case avlQty = "avl_qty"

            case amountPaid = "amount_paid"

            case affiliateMeta = "affiliate_meta"

            case affiliateStoreId = "affiliate_store_id"

            case hsnCodeId = "hsn_code_id"

            case sku

            case itemId = "item_id"

            case modifiedOn = "modified_on"

            case pdfLinks = "pdf_links"

            case priceEffective = "price_effective"

            case fyndStoreId = "fynd_store_id"

            case itemSize = "item_size"

            case storeId = "store_id"

            case unitPrice = "unit_price"

            case quantity

            case sellerIdentifier = "seller_identifier"

            case companyId = "company_id"

            case discount

            case deliveryCharge = "delivery_charge"

            case priceMarked = "price_marked"

            case id = "_id"

            case transferPrice = "transfer_price"
        }

        public init(affiliateMeta: [String: Any], affiliateStoreId: String, amountPaid: Double, avlQty: Int, companyId: Int, deliveryCharge: Double, discount: Double, fyndStoreId: String, hsnCodeId: String, identifier: [String: Any], itemId: Int, itemSize: String, modifiedOn: String, pdfLinks: MarketPlacePdf? = nil, priceEffective: Double, priceMarked: Double, quantity: Int, sellerIdentifier: String, sku: String, storeId: Int, transferPrice: Int, unitPrice: Double, id: String) {
            self.identifier = identifier

            self.avlQty = avlQty

            self.amountPaid = amountPaid

            self.affiliateMeta = affiliateMeta

            self.affiliateStoreId = affiliateStoreId

            self.hsnCodeId = hsnCodeId

            self.sku = sku

            self.itemId = itemId

            self.modifiedOn = modifiedOn

            self.pdfLinks = pdfLinks

            self.priceEffective = priceEffective

            self.fyndStoreId = fyndStoreId

            self.itemSize = itemSize

            self.storeId = storeId

            self.unitPrice = unitPrice

            self.quantity = quantity

            self.sellerIdentifier = sellerIdentifier

            self.companyId = companyId

            self.discount = discount

            self.deliveryCharge = deliveryCharge

            self.priceMarked = priceMarked

            self.id = id

            self.transferPrice = transferPrice
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            identifier = try container.decode([String: Any].self, forKey: .identifier)

            avlQty = try container.decode(Int.self, forKey: .avlQty)

            amountPaid = try container.decode(Double.self, forKey: .amountPaid)

            affiliateMeta = try container.decode([String: Any].self, forKey: .affiliateMeta)

            affiliateStoreId = try container.decode(String.self, forKey: .affiliateStoreId)

            hsnCodeId = try container.decode(String.self, forKey: .hsnCodeId)

            sku = try container.decode(String.self, forKey: .sku)

            itemId = try container.decode(Int.self, forKey: .itemId)

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            do {
                pdfLinks = try container.decode(MarketPlacePdf.self, forKey: .pdfLinks)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            priceEffective = try container.decode(Double.self, forKey: .priceEffective)

            fyndStoreId = try container.decode(String.self, forKey: .fyndStoreId)

            itemSize = try container.decode(String.self, forKey: .itemSize)

            storeId = try container.decode(Int.self, forKey: .storeId)

            unitPrice = try container.decode(Double.self, forKey: .unitPrice)

            quantity = try container.decode(Int.self, forKey: .quantity)

            sellerIdentifier = try container.decode(String.self, forKey: .sellerIdentifier)

            companyId = try container.decode(Int.self, forKey: .companyId)

            discount = try container.decode(Double.self, forKey: .discount)

            deliveryCharge = try container.decode(Double.self, forKey: .deliveryCharge)

            priceMarked = try container.decode(Double.self, forKey: .priceMarked)

            id = try container.decode(String.self, forKey: .id)

            transferPrice = try container.decode(Int.self, forKey: .transferPrice)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(identifier, forKey: .identifier)

            try? container.encodeIfPresent(avlQty, forKey: .avlQty)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(affiliateMeta, forKey: .affiliateMeta)

            try? container.encodeIfPresent(affiliateStoreId, forKey: .affiliateStoreId)

            try? container.encodeIfPresent(hsnCodeId, forKey: .hsnCodeId)

            try? container.encodeIfPresent(sku, forKey: .sku)

            try? container.encodeIfPresent(itemId, forKey: .itemId)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(pdfLinks, forKey: .pdfLinks)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(fyndStoreId, forKey: .fyndStoreId)

            try? container.encodeIfPresent(itemSize, forKey: .itemSize)

            try? container.encodeIfPresent(storeId, forKey: .storeId)

            try? container.encodeIfPresent(unitPrice, forKey: .unitPrice)

            try? container.encodeIfPresent(quantity, forKey: .quantity)

            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(transferPrice, forKey: .transferPrice)
        }
    }
}
