

import Foundation
public extension PlatformClient {
    /*
         Model: AffiliateBag
         Used By: Order
     */

    class AffiliateBag: Codable {
        public var avlQty: Int

        public var priceMarked: Double

        public var itemId: Int

        public var itemSize: String

        public var storeId: Int

        public var transferPrice: Int

        public var fyndStoreId: String

        public var hsnCodeId: String

        public var deliveryCharge: Double

        public var priceEffective: Double

        public var quantity: Int

        public var modifiedOn: String

        public var affiliateStoreId: String

        public var sku: String

        public var unitPrice: Double

        public var discount: Double

        public var amountPaid: Double

        public var affiliateMeta: [String: Any]

        public var pdfLinks: MarketPlacePdf?

        public var companyId: Int

        public var id: String

        public var sellerIdentifier: String

        public var identifier: [String: Any]

        public enum CodingKeys: String, CodingKey {
            case avlQty = "avl_qty"

            case priceMarked = "price_marked"

            case itemId = "item_id"

            case itemSize = "item_size"

            case storeId = "store_id"

            case transferPrice = "transfer_price"

            case fyndStoreId = "fynd_store_id"

            case hsnCodeId = "hsn_code_id"

            case deliveryCharge = "delivery_charge"

            case priceEffective = "price_effective"

            case quantity

            case modifiedOn = "modified_on"

            case affiliateStoreId = "affiliate_store_id"

            case sku

            case unitPrice = "unit_price"

            case discount

            case amountPaid = "amount_paid"

            case affiliateMeta = "affiliate_meta"

            case pdfLinks = "pdf_links"

            case companyId = "company_id"

            case id = "_id"

            case sellerIdentifier = "seller_identifier"

            case identifier
        }

        public init(affiliateMeta: [String: Any], affiliateStoreId: String, amountPaid: Double, avlQty: Int, companyId: Int, deliveryCharge: Double, discount: Double, fyndStoreId: String, hsnCodeId: String, identifier: [String: Any], itemId: Int, itemSize: String, modifiedOn: String, pdfLinks: MarketPlacePdf? = nil, priceEffective: Double, priceMarked: Double, quantity: Int, sellerIdentifier: String, sku: String, storeId: Int, transferPrice: Int, unitPrice: Double, id: String) {
            self.avlQty = avlQty

            self.priceMarked = priceMarked

            self.itemId = itemId

            self.itemSize = itemSize

            self.storeId = storeId

            self.transferPrice = transferPrice

            self.fyndStoreId = fyndStoreId

            self.hsnCodeId = hsnCodeId

            self.deliveryCharge = deliveryCharge

            self.priceEffective = priceEffective

            self.quantity = quantity

            self.modifiedOn = modifiedOn

            self.affiliateStoreId = affiliateStoreId

            self.sku = sku

            self.unitPrice = unitPrice

            self.discount = discount

            self.amountPaid = amountPaid

            self.affiliateMeta = affiliateMeta

            self.pdfLinks = pdfLinks

            self.companyId = companyId

            self.id = id

            self.sellerIdentifier = sellerIdentifier

            self.identifier = identifier
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            avlQty = try container.decode(Int.self, forKey: .avlQty)

            priceMarked = try container.decode(Double.self, forKey: .priceMarked)

            itemId = try container.decode(Int.self, forKey: .itemId)

            itemSize = try container.decode(String.self, forKey: .itemSize)

            storeId = try container.decode(Int.self, forKey: .storeId)

            transferPrice = try container.decode(Int.self, forKey: .transferPrice)

            fyndStoreId = try container.decode(String.self, forKey: .fyndStoreId)

            hsnCodeId = try container.decode(String.self, forKey: .hsnCodeId)

            deliveryCharge = try container.decode(Double.self, forKey: .deliveryCharge)

            priceEffective = try container.decode(Double.self, forKey: .priceEffective)

            quantity = try container.decode(Int.self, forKey: .quantity)

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            affiliateStoreId = try container.decode(String.self, forKey: .affiliateStoreId)

            sku = try container.decode(String.self, forKey: .sku)

            unitPrice = try container.decode(Double.self, forKey: .unitPrice)

            discount = try container.decode(Double.self, forKey: .discount)

            amountPaid = try container.decode(Double.self, forKey: .amountPaid)

            affiliateMeta = try container.decode([String: Any].self, forKey: .affiliateMeta)

            do {
                pdfLinks = try container.decode(MarketPlacePdf.self, forKey: .pdfLinks)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            companyId = try container.decode(Int.self, forKey: .companyId)

            id = try container.decode(String.self, forKey: .id)

            sellerIdentifier = try container.decode(String.self, forKey: .sellerIdentifier)

            identifier = try container.decode([String: Any].self, forKey: .identifier)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(avlQty, forKey: .avlQty)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(itemId, forKey: .itemId)

            try? container.encodeIfPresent(itemSize, forKey: .itemSize)

            try? container.encodeIfPresent(storeId, forKey: .storeId)

            try? container.encodeIfPresent(transferPrice, forKey: .transferPrice)

            try? container.encodeIfPresent(fyndStoreId, forKey: .fyndStoreId)

            try? container.encodeIfPresent(hsnCodeId, forKey: .hsnCodeId)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(quantity, forKey: .quantity)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(affiliateStoreId, forKey: .affiliateStoreId)

            try? container.encodeIfPresent(sku, forKey: .sku)

            try? container.encodeIfPresent(unitPrice, forKey: .unitPrice)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(affiliateMeta, forKey: .affiliateMeta)

            try? container.encodeIfPresent(pdfLinks, forKey: .pdfLinks)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)

            try? container.encodeIfPresent(identifier, forKey: .identifier)
        }
    }
}
