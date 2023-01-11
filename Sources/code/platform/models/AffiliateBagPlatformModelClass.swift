

import Foundation
public extension PlatformClient {
    /*
         Model: AffiliateBag
         Used By: Order
     */

    class AffiliateBag: Codable {
        public var sku: String

        public var fyndStoreId: String

        public var affiliateStoreId: String

        public var unitPrice: Double

        public var identifier: [String: Any]

        public var amountPaid: Double

        public var itemId: Int

        public var storeId: Int

        public var id: String

        public var itemSize: String

        public var transferPrice: Int

        public var discount: Double

        public var pdfLinks: MarketPlacePdf?

        public var affiliateMeta: [String: Any]

        public var priceEffective: Double

        public var priceMarked: Double

        public var modifiedOn: String

        public var companyId: Int

        public var hsnCodeId: String

        public var deliveryCharge: Double

        public var avlQty: Int

        public var sellerIdentifier: String

        public var quantity: Int

        public enum CodingKeys: String, CodingKey {
            case sku

            case fyndStoreId = "fynd_store_id"

            case affiliateStoreId = "affiliate_store_id"

            case unitPrice = "unit_price"

            case identifier

            case amountPaid = "amount_paid"

            case itemId = "item_id"

            case storeId = "store_id"

            case id = "_id"

            case itemSize = "item_size"

            case transferPrice = "transfer_price"

            case discount

            case pdfLinks = "pdf_links"

            case affiliateMeta = "affiliate_meta"

            case priceEffective = "price_effective"

            case priceMarked = "price_marked"

            case modifiedOn = "modified_on"

            case companyId = "company_id"

            case hsnCodeId = "hsn_code_id"

            case deliveryCharge = "delivery_charge"

            case avlQty = "avl_qty"

            case sellerIdentifier = "seller_identifier"

            case quantity
        }

        public init(affiliateMeta: [String: Any], affiliateStoreId: String, amountPaid: Double, avlQty: Int, companyId: Int, deliveryCharge: Double, discount: Double, fyndStoreId: String, hsnCodeId: String, identifier: [String: Any], itemId: Int, itemSize: String, modifiedOn: String, pdfLinks: MarketPlacePdf? = nil, priceEffective: Double, priceMarked: Double, quantity: Int, sellerIdentifier: String, sku: String, storeId: Int, transferPrice: Int, unitPrice: Double, id: String) {
            self.sku = sku

            self.fyndStoreId = fyndStoreId

            self.affiliateStoreId = affiliateStoreId

            self.unitPrice = unitPrice

            self.identifier = identifier

            self.amountPaid = amountPaid

            self.itemId = itemId

            self.storeId = storeId

            self.id = id

            self.itemSize = itemSize

            self.transferPrice = transferPrice

            self.discount = discount

            self.pdfLinks = pdfLinks

            self.affiliateMeta = affiliateMeta

            self.priceEffective = priceEffective

            self.priceMarked = priceMarked

            self.modifiedOn = modifiedOn

            self.companyId = companyId

            self.hsnCodeId = hsnCodeId

            self.deliveryCharge = deliveryCharge

            self.avlQty = avlQty

            self.sellerIdentifier = sellerIdentifier

            self.quantity = quantity
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            sku = try container.decode(String.self, forKey: .sku)

            fyndStoreId = try container.decode(String.self, forKey: .fyndStoreId)

            affiliateStoreId = try container.decode(String.self, forKey: .affiliateStoreId)

            unitPrice = try container.decode(Double.self, forKey: .unitPrice)

            identifier = try container.decode([String: Any].self, forKey: .identifier)

            amountPaid = try container.decode(Double.self, forKey: .amountPaid)

            itemId = try container.decode(Int.self, forKey: .itemId)

            storeId = try container.decode(Int.self, forKey: .storeId)

            id = try container.decode(String.self, forKey: .id)

            itemSize = try container.decode(String.self, forKey: .itemSize)

            transferPrice = try container.decode(Int.self, forKey: .transferPrice)

            discount = try container.decode(Double.self, forKey: .discount)

            do {
                pdfLinks = try container.decode(MarketPlacePdf.self, forKey: .pdfLinks)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            affiliateMeta = try container.decode([String: Any].self, forKey: .affiliateMeta)

            priceEffective = try container.decode(Double.self, forKey: .priceEffective)

            priceMarked = try container.decode(Double.self, forKey: .priceMarked)

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            companyId = try container.decode(Int.self, forKey: .companyId)

            hsnCodeId = try container.decode(String.self, forKey: .hsnCodeId)

            deliveryCharge = try container.decode(Double.self, forKey: .deliveryCharge)

            avlQty = try container.decode(Int.self, forKey: .avlQty)

            sellerIdentifier = try container.decode(String.self, forKey: .sellerIdentifier)

            quantity = try container.decode(Int.self, forKey: .quantity)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(sku, forKey: .sku)

            try? container.encodeIfPresent(fyndStoreId, forKey: .fyndStoreId)

            try? container.encodeIfPresent(affiliateStoreId, forKey: .affiliateStoreId)

            try? container.encodeIfPresent(unitPrice, forKey: .unitPrice)

            try? container.encodeIfPresent(identifier, forKey: .identifier)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(itemId, forKey: .itemId)

            try? container.encodeIfPresent(storeId, forKey: .storeId)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(itemSize, forKey: .itemSize)

            try? container.encodeIfPresent(transferPrice, forKey: .transferPrice)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(pdfLinks, forKey: .pdfLinks)

            try? container.encodeIfPresent(affiliateMeta, forKey: .affiliateMeta)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(hsnCodeId, forKey: .hsnCodeId)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

            try? container.encodeIfPresent(avlQty, forKey: .avlQty)

            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)

            try? container.encodeIfPresent(quantity, forKey: .quantity)
        }
    }
}
