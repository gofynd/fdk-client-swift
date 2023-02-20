

import Foundation
public extension PlatformClient {
    /*
         Model: AffiliateBag
         Used By: Order
     */

    class AffiliateBag: Codable {
        public var pdfLinks: MarketPlacePdf?

        public var quantity: Int

        public var affiliateStoreId: String

        public var itemSize: String

        public var avlQty: Int

        public var priceMarked: Double

        public var modifiedOn: String

        public var fyndStoreId: String

        public var discount: Double

        public var unitPrice: Double

        public var hsnCodeId: String

        public var amountPaid: Double

        public var transferPrice: Int

        public var sku: String

        public var itemId: Int

        public var deliveryCharge: Double

        public var storeId: Int

        public var priceEffective: Double

        public var id: String

        public var companyId: Int

        public var sellerIdentifier: String

        public var affiliateMeta: [String: Any]

        public var identifier: [String: Any]

        public enum CodingKeys: String, CodingKey {
            case pdfLinks = "pdf_links"

            case quantity

            case affiliateStoreId = "affiliate_store_id"

            case itemSize = "item_size"

            case avlQty = "avl_qty"

            case priceMarked = "price_marked"

            case modifiedOn = "modified_on"

            case fyndStoreId = "fynd_store_id"

            case discount

            case unitPrice = "unit_price"

            case hsnCodeId = "hsn_code_id"

            case amountPaid = "amount_paid"

            case transferPrice = "transfer_price"

            case sku

            case itemId = "item_id"

            case deliveryCharge = "delivery_charge"

            case storeId = "store_id"

            case priceEffective = "price_effective"

            case id = "_id"

            case companyId = "company_id"

            case sellerIdentifier = "seller_identifier"

            case affiliateMeta = "affiliate_meta"

            case identifier
        }

        public init(affiliateMeta: [String: Any], affiliateStoreId: String, amountPaid: Double, avlQty: Int, companyId: Int, deliveryCharge: Double, discount: Double, fyndStoreId: String, hsnCodeId: String, identifier: [String: Any], itemId: Int, itemSize: String, modifiedOn: String, pdfLinks: MarketPlacePdf? = nil, priceEffective: Double, priceMarked: Double, quantity: Int, sellerIdentifier: String, sku: String, storeId: Int, transferPrice: Int, unitPrice: Double, id: String) {
            self.pdfLinks = pdfLinks

            self.quantity = quantity

            self.affiliateStoreId = affiliateStoreId

            self.itemSize = itemSize

            self.avlQty = avlQty

            self.priceMarked = priceMarked

            self.modifiedOn = modifiedOn

            self.fyndStoreId = fyndStoreId

            self.discount = discount

            self.unitPrice = unitPrice

            self.hsnCodeId = hsnCodeId

            self.amountPaid = amountPaid

            self.transferPrice = transferPrice

            self.sku = sku

            self.itemId = itemId

            self.deliveryCharge = deliveryCharge

            self.storeId = storeId

            self.priceEffective = priceEffective

            self.id = id

            self.companyId = companyId

            self.sellerIdentifier = sellerIdentifier

            self.affiliateMeta = affiliateMeta

            self.identifier = identifier
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                pdfLinks = try container.decode(MarketPlacePdf.self, forKey: .pdfLinks)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            quantity = try container.decode(Int.self, forKey: .quantity)

            affiliateStoreId = try container.decode(String.self, forKey: .affiliateStoreId)

            itemSize = try container.decode(String.self, forKey: .itemSize)

            avlQty = try container.decode(Int.self, forKey: .avlQty)

            priceMarked = try container.decode(Double.self, forKey: .priceMarked)

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            fyndStoreId = try container.decode(String.self, forKey: .fyndStoreId)

            discount = try container.decode(Double.self, forKey: .discount)

            unitPrice = try container.decode(Double.self, forKey: .unitPrice)

            hsnCodeId = try container.decode(String.self, forKey: .hsnCodeId)

            amountPaid = try container.decode(Double.self, forKey: .amountPaid)

            transferPrice = try container.decode(Int.self, forKey: .transferPrice)

            sku = try container.decode(String.self, forKey: .sku)

            itemId = try container.decode(Int.self, forKey: .itemId)

            deliveryCharge = try container.decode(Double.self, forKey: .deliveryCharge)

            storeId = try container.decode(Int.self, forKey: .storeId)

            priceEffective = try container.decode(Double.self, forKey: .priceEffective)

            id = try container.decode(String.self, forKey: .id)

            companyId = try container.decode(Int.self, forKey: .companyId)

            sellerIdentifier = try container.decode(String.self, forKey: .sellerIdentifier)

            affiliateMeta = try container.decode([String: Any].self, forKey: .affiliateMeta)

            identifier = try container.decode([String: Any].self, forKey: .identifier)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(pdfLinks, forKey: .pdfLinks)

            try? container.encodeIfPresent(quantity, forKey: .quantity)

            try? container.encodeIfPresent(affiliateStoreId, forKey: .affiliateStoreId)

            try? container.encodeIfPresent(itemSize, forKey: .itemSize)

            try? container.encodeIfPresent(avlQty, forKey: .avlQty)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(fyndStoreId, forKey: .fyndStoreId)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(unitPrice, forKey: .unitPrice)

            try? container.encodeIfPresent(hsnCodeId, forKey: .hsnCodeId)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(transferPrice, forKey: .transferPrice)

            try? container.encodeIfPresent(sku, forKey: .sku)

            try? container.encodeIfPresent(itemId, forKey: .itemId)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

            try? container.encodeIfPresent(storeId, forKey: .storeId)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)

            try? container.encodeIfPresent(affiliateMeta, forKey: .affiliateMeta)

            try? container.encodeIfPresent(identifier, forKey: .identifier)
        }
    }
}
