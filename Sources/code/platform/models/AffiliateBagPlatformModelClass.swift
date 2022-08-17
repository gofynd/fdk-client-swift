

import Foundation
public extension PlatformClient {
    /*
         Model: AffiliateBag
         Used By: Order
     */

    class AffiliateBag: Codable {
        public var quantity: Int

        public var modifiedOn: String

        public var transferPrice: Int

        public var deliveryCharge: Double

        public var itemSize: String

        public var identifier: [String: Any]

        public var unitPrice: Double

        public var itemId: Int

        public var sellerIdentifier: String

        public var amountPaid: Double

        public var sku: String

        public var priceEffective: Double

        public var storeId: Int

        public var pdfLinks: MarketPlacePdf?

        public var avlQty: Int

        public var priceMarked: Double

        public var discount: Double

        public var affiliateMeta: [String: Any]

        public var hsnCodeId: String

        public var companyId: Int

        public var id: String

        public var fyndStoreId: String

        public var affiliateStoreId: String

        public enum CodingKeys: String, CodingKey {
            case quantity

            case modifiedOn = "modified_on"

            case transferPrice = "transfer_price"

            case deliveryCharge = "delivery_charge"

            case itemSize = "item_size"

            case identifier

            case unitPrice = "unit_price"

            case itemId = "item_id"

            case sellerIdentifier = "seller_identifier"

            case amountPaid = "amount_paid"

            case sku

            case priceEffective = "price_effective"

            case storeId = "store_id"

            case pdfLinks = "pdf_links"

            case avlQty = "avl_qty"

            case priceMarked = "price_marked"

            case discount

            case affiliateMeta = "affiliate_meta"

            case hsnCodeId = "hsn_code_id"

            case companyId = "company_id"

            case id = "_id"

            case fyndStoreId = "fynd_store_id"

            case affiliateStoreId = "affiliate_store_id"
        }

        public init(affiliateMeta: [String: Any], affiliateStoreId: String, amountPaid: Double, avlQty: Int, companyId: Int, deliveryCharge: Double, discount: Double, fyndStoreId: String, hsnCodeId: String, identifier: [String: Any], itemId: Int, itemSize: String, modifiedOn: String, pdfLinks: MarketPlacePdf? = nil, priceEffective: Double, priceMarked: Double, quantity: Int, sellerIdentifier: String, sku: String, storeId: Int, transferPrice: Int, unitPrice: Double, id: String) {
            self.quantity = quantity

            self.modifiedOn = modifiedOn

            self.transferPrice = transferPrice

            self.deliveryCharge = deliveryCharge

            self.itemSize = itemSize

            self.identifier = identifier

            self.unitPrice = unitPrice

            self.itemId = itemId

            self.sellerIdentifier = sellerIdentifier

            self.amountPaid = amountPaid

            self.sku = sku

            self.priceEffective = priceEffective

            self.storeId = storeId

            self.pdfLinks = pdfLinks

            self.avlQty = avlQty

            self.priceMarked = priceMarked

            self.discount = discount

            self.affiliateMeta = affiliateMeta

            self.hsnCodeId = hsnCodeId

            self.companyId = companyId

            self.id = id

            self.fyndStoreId = fyndStoreId

            self.affiliateStoreId = affiliateStoreId
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            quantity = try container.decode(Int.self, forKey: .quantity)

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            transferPrice = try container.decode(Int.self, forKey: .transferPrice)

            deliveryCharge = try container.decode(Double.self, forKey: .deliveryCharge)

            itemSize = try container.decode(String.self, forKey: .itemSize)

            identifier = try container.decode([String: Any].self, forKey: .identifier)

            unitPrice = try container.decode(Double.self, forKey: .unitPrice)

            itemId = try container.decode(Int.self, forKey: .itemId)

            sellerIdentifier = try container.decode(String.self, forKey: .sellerIdentifier)

            amountPaid = try container.decode(Double.self, forKey: .amountPaid)

            sku = try container.decode(String.self, forKey: .sku)

            priceEffective = try container.decode(Double.self, forKey: .priceEffective)

            storeId = try container.decode(Int.self, forKey: .storeId)

            do {
                pdfLinks = try container.decode(MarketPlacePdf.self, forKey: .pdfLinks)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            avlQty = try container.decode(Int.self, forKey: .avlQty)

            priceMarked = try container.decode(Double.self, forKey: .priceMarked)

            discount = try container.decode(Double.self, forKey: .discount)

            affiliateMeta = try container.decode([String: Any].self, forKey: .affiliateMeta)

            hsnCodeId = try container.decode(String.self, forKey: .hsnCodeId)

            companyId = try container.decode(Int.self, forKey: .companyId)

            id = try container.decode(String.self, forKey: .id)

            fyndStoreId = try container.decode(String.self, forKey: .fyndStoreId)

            affiliateStoreId = try container.decode(String.self, forKey: .affiliateStoreId)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(quantity, forKey: .quantity)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(transferPrice, forKey: .transferPrice)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

            try? container.encodeIfPresent(itemSize, forKey: .itemSize)

            try? container.encodeIfPresent(identifier, forKey: .identifier)

            try? container.encodeIfPresent(unitPrice, forKey: .unitPrice)

            try? container.encodeIfPresent(itemId, forKey: .itemId)

            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(sku, forKey: .sku)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(storeId, forKey: .storeId)

            try? container.encodeIfPresent(pdfLinks, forKey: .pdfLinks)

            try? container.encodeIfPresent(avlQty, forKey: .avlQty)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(affiliateMeta, forKey: .affiliateMeta)

            try? container.encodeIfPresent(hsnCodeId, forKey: .hsnCodeId)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(fyndStoreId, forKey: .fyndStoreId)

            try? container.encodeIfPresent(affiliateStoreId, forKey: .affiliateStoreId)
        }
    }
}
