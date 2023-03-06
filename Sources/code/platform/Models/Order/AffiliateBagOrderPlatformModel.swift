

import Foundation

public extension PlatformClient.Order {
    /*
         Model: AffiliateBag
         Used By: Order
     */

    class AffiliateBag: Codable {
        public var id: String

        public var deliveryCharge: Double

        public var storeId: Int

        public var affiliateMeta: [String: Any]

        public var unitPrice: Double

        public var modifiedOn: String

        public var identifier: [String: Any]

        public var amountPaid: Double

        public var transferPrice: Int

        public var itemId: Int

        public var priceEffective: Double

        public var priceMarked: Double

        public var affiliateStoreId: String

        public var itemSize: String

        public var quantity: Int

        public var sellerIdentifier: String

        public var pdfLinks: MarketPlacePdf?

        public var hsnCodeId: String

        public var companyId: Int

        public var sku: String

        public var avlQty: Int

        public var discount: Double

        public var fyndStoreId: String

        public enum CodingKeys: String, CodingKey {
            case id = "_id"

            case deliveryCharge = "delivery_charge"

            case storeId = "store_id"

            case affiliateMeta = "affiliate_meta"

            case unitPrice = "unit_price"

            case modifiedOn = "modified_on"

            case identifier

            case amountPaid = "amount_paid"

            case transferPrice = "transfer_price"

            case itemId = "item_id"

            case priceEffective = "price_effective"

            case priceMarked = "price_marked"

            case affiliateStoreId = "affiliate_store_id"

            case itemSize = "item_size"

            case quantity

            case sellerIdentifier = "seller_identifier"

            case pdfLinks = "pdf_links"

            case hsnCodeId = "hsn_code_id"

            case companyId = "company_id"

            case sku

            case avlQty = "avl_qty"

            case discount

            case fyndStoreId = "fynd_store_id"
        }

        public init(affiliateMeta: [String: Any], affiliateStoreId: String, amountPaid: Double, avlQty: Int, companyId: Int, deliveryCharge: Double, discount: Double, fyndStoreId: String, hsnCodeId: String, identifier: [String: Any], itemId: Int, itemSize: String, modifiedOn: String, pdfLinks: MarketPlacePdf? = nil, priceEffective: Double, priceMarked: Double, quantity: Int, sellerIdentifier: String, sku: String, storeId: Int, transferPrice: Int, unitPrice: Double, id: String) {
            self.id = id

            self.deliveryCharge = deliveryCharge

            self.storeId = storeId

            self.affiliateMeta = affiliateMeta

            self.unitPrice = unitPrice

            self.modifiedOn = modifiedOn

            self.identifier = identifier

            self.amountPaid = amountPaid

            self.transferPrice = transferPrice

            self.itemId = itemId

            self.priceEffective = priceEffective

            self.priceMarked = priceMarked

            self.affiliateStoreId = affiliateStoreId

            self.itemSize = itemSize

            self.quantity = quantity

            self.sellerIdentifier = sellerIdentifier

            self.pdfLinks = pdfLinks

            self.hsnCodeId = hsnCodeId

            self.companyId = companyId

            self.sku = sku

            self.avlQty = avlQty

            self.discount = discount

            self.fyndStoreId = fyndStoreId
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            id = try container.decode(String.self, forKey: .id)

            deliveryCharge = try container.decode(Double.self, forKey: .deliveryCharge)

            storeId = try container.decode(Int.self, forKey: .storeId)

            affiliateMeta = try container.decode([String: Any].self, forKey: .affiliateMeta)

            unitPrice = try container.decode(Double.self, forKey: .unitPrice)

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            identifier = try container.decode([String: Any].self, forKey: .identifier)

            amountPaid = try container.decode(Double.self, forKey: .amountPaid)

            transferPrice = try container.decode(Int.self, forKey: .transferPrice)

            itemId = try container.decode(Int.self, forKey: .itemId)

            priceEffective = try container.decode(Double.self, forKey: .priceEffective)

            priceMarked = try container.decode(Double.self, forKey: .priceMarked)

            affiliateStoreId = try container.decode(String.self, forKey: .affiliateStoreId)

            itemSize = try container.decode(String.self, forKey: .itemSize)

            quantity = try container.decode(Int.self, forKey: .quantity)

            sellerIdentifier = try container.decode(String.self, forKey: .sellerIdentifier)

            do {
                pdfLinks = try container.decode(MarketPlacePdf.self, forKey: .pdfLinks)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            hsnCodeId = try container.decode(String.self, forKey: .hsnCodeId)

            companyId = try container.decode(Int.self, forKey: .companyId)

            sku = try container.decode(String.self, forKey: .sku)

            avlQty = try container.decode(Int.self, forKey: .avlQty)

            discount = try container.decode(Double.self, forKey: .discount)

            fyndStoreId = try container.decode(String.self, forKey: .fyndStoreId)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

            try? container.encodeIfPresent(storeId, forKey: .storeId)

            try? container.encodeIfPresent(affiliateMeta, forKey: .affiliateMeta)

            try? container.encodeIfPresent(unitPrice, forKey: .unitPrice)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(identifier, forKey: .identifier)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(transferPrice, forKey: .transferPrice)

            try? container.encodeIfPresent(itemId, forKey: .itemId)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(affiliateStoreId, forKey: .affiliateStoreId)

            try? container.encodeIfPresent(itemSize, forKey: .itemSize)

            try? container.encodeIfPresent(quantity, forKey: .quantity)

            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)

            try? container.encodeIfPresent(pdfLinks, forKey: .pdfLinks)

            try? container.encodeIfPresent(hsnCodeId, forKey: .hsnCodeId)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(sku, forKey: .sku)

            try? container.encodeIfPresent(avlQty, forKey: .avlQty)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(fyndStoreId, forKey: .fyndStoreId)
        }
    }
}

public extension PlatformClient.ApplicationClient.Order {
    /*
         Model: AffiliateBag
         Used By: Order
     */

    class AffiliateBag: Codable {
        public var id: String

        public var deliveryCharge: Double

        public var storeId: Int

        public var affiliateMeta: [String: Any]

        public var unitPrice: Double

        public var modifiedOn: String

        public var identifier: [String: Any]

        public var amountPaid: Double

        public var transferPrice: Int

        public var itemId: Int

        public var priceEffective: Double

        public var priceMarked: Double

        public var affiliateStoreId: String

        public var itemSize: String

        public var quantity: Int

        public var sellerIdentifier: String

        public var pdfLinks: MarketPlacePdf?

        public var hsnCodeId: String

        public var companyId: Int

        public var sku: String

        public var avlQty: Int

        public var discount: Double

        public var fyndStoreId: String

        public enum CodingKeys: String, CodingKey {
            case id = "_id"

            case deliveryCharge = "delivery_charge"

            case storeId = "store_id"

            case affiliateMeta = "affiliate_meta"

            case unitPrice = "unit_price"

            case modifiedOn = "modified_on"

            case identifier

            case amountPaid = "amount_paid"

            case transferPrice = "transfer_price"

            case itemId = "item_id"

            case priceEffective = "price_effective"

            case priceMarked = "price_marked"

            case affiliateStoreId = "affiliate_store_id"

            case itemSize = "item_size"

            case quantity

            case sellerIdentifier = "seller_identifier"

            case pdfLinks = "pdf_links"

            case hsnCodeId = "hsn_code_id"

            case companyId = "company_id"

            case sku

            case avlQty = "avl_qty"

            case discount

            case fyndStoreId = "fynd_store_id"
        }

        public init(affiliateMeta: [String: Any], affiliateStoreId: String, amountPaid: Double, avlQty: Int, companyId: Int, deliveryCharge: Double, discount: Double, fyndStoreId: String, hsnCodeId: String, identifier: [String: Any], itemId: Int, itemSize: String, modifiedOn: String, pdfLinks: MarketPlacePdf? = nil, priceEffective: Double, priceMarked: Double, quantity: Int, sellerIdentifier: String, sku: String, storeId: Int, transferPrice: Int, unitPrice: Double, id: String) {
            self.id = id

            self.deliveryCharge = deliveryCharge

            self.storeId = storeId

            self.affiliateMeta = affiliateMeta

            self.unitPrice = unitPrice

            self.modifiedOn = modifiedOn

            self.identifier = identifier

            self.amountPaid = amountPaid

            self.transferPrice = transferPrice

            self.itemId = itemId

            self.priceEffective = priceEffective

            self.priceMarked = priceMarked

            self.affiliateStoreId = affiliateStoreId

            self.itemSize = itemSize

            self.quantity = quantity

            self.sellerIdentifier = sellerIdentifier

            self.pdfLinks = pdfLinks

            self.hsnCodeId = hsnCodeId

            self.companyId = companyId

            self.sku = sku

            self.avlQty = avlQty

            self.discount = discount

            self.fyndStoreId = fyndStoreId
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            id = try container.decode(String.self, forKey: .id)

            deliveryCharge = try container.decode(Double.self, forKey: .deliveryCharge)

            storeId = try container.decode(Int.self, forKey: .storeId)

            affiliateMeta = try container.decode([String: Any].self, forKey: .affiliateMeta)

            unitPrice = try container.decode(Double.self, forKey: .unitPrice)

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            identifier = try container.decode([String: Any].self, forKey: .identifier)

            amountPaid = try container.decode(Double.self, forKey: .amountPaid)

            transferPrice = try container.decode(Int.self, forKey: .transferPrice)

            itemId = try container.decode(Int.self, forKey: .itemId)

            priceEffective = try container.decode(Double.self, forKey: .priceEffective)

            priceMarked = try container.decode(Double.self, forKey: .priceMarked)

            affiliateStoreId = try container.decode(String.self, forKey: .affiliateStoreId)

            itemSize = try container.decode(String.self, forKey: .itemSize)

            quantity = try container.decode(Int.self, forKey: .quantity)

            sellerIdentifier = try container.decode(String.self, forKey: .sellerIdentifier)

            do {
                pdfLinks = try container.decode(MarketPlacePdf.self, forKey: .pdfLinks)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            hsnCodeId = try container.decode(String.self, forKey: .hsnCodeId)

            companyId = try container.decode(Int.self, forKey: .companyId)

            sku = try container.decode(String.self, forKey: .sku)

            avlQty = try container.decode(Int.self, forKey: .avlQty)

            discount = try container.decode(Double.self, forKey: .discount)

            fyndStoreId = try container.decode(String.self, forKey: .fyndStoreId)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

            try? container.encodeIfPresent(storeId, forKey: .storeId)

            try? container.encodeIfPresent(affiliateMeta, forKey: .affiliateMeta)

            try? container.encodeIfPresent(unitPrice, forKey: .unitPrice)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(identifier, forKey: .identifier)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(transferPrice, forKey: .transferPrice)

            try? container.encodeIfPresent(itemId, forKey: .itemId)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(affiliateStoreId, forKey: .affiliateStoreId)

            try? container.encodeIfPresent(itemSize, forKey: .itemSize)

            try? container.encodeIfPresent(quantity, forKey: .quantity)

            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)

            try? container.encodeIfPresent(pdfLinks, forKey: .pdfLinks)

            try? container.encodeIfPresent(hsnCodeId, forKey: .hsnCodeId)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(sku, forKey: .sku)

            try? container.encodeIfPresent(avlQty, forKey: .avlQty)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(fyndStoreId, forKey: .fyndStoreId)
        }
    }
}
