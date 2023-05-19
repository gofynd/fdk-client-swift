

import Foundation

public extension PlatformClient.Order {
    /*
         Model: AffiliateBag
         Used By: Order
     */

    class AffiliateBag: Codable {
        public var priceEffective: Double

        public var companyId: Int

        public var fyndStoreId: String

        public var pdfLinks: MarketPlacePdf?

        public var identifier: [String: Any]

        public var affiliateMeta: [String: Any]

        public var affiliateStoreId: String

        public var sku: String

        public var amountPaid: Double

        public var sellerIdentifier: String

        public var avlQty: Int

        public var discount: Double

        public var modifiedOn: String

        public var unitPrice: Double

        public var storeId: Int

        public var id: String

        public var hsnCodeId: String

        public var quantity: Int

        public var deliveryCharge: Double

        public var priceMarked: Double

        public var itemId: Int

        public var transferPrice: Int

        public var itemSize: String

        public enum CodingKeys: String, CodingKey {
            case priceEffective = "price_effective"

            case companyId = "company_id"

            case fyndStoreId = "fynd_store_id"

            case pdfLinks = "pdf_links"

            case identifier

            case affiliateMeta = "affiliate_meta"

            case affiliateStoreId = "affiliate_store_id"

            case sku

            case amountPaid = "amount_paid"

            case sellerIdentifier = "seller_identifier"

            case avlQty = "avl_qty"

            case discount

            case modifiedOn = "modified_on"

            case unitPrice = "unit_price"

            case storeId = "store_id"

            case id = "_id"

            case hsnCodeId = "hsn_code_id"

            case quantity

            case deliveryCharge = "delivery_charge"

            case priceMarked = "price_marked"

            case itemId = "item_id"

            case transferPrice = "transfer_price"

            case itemSize = "item_size"
        }

        public init(affiliateMeta: [String: Any], affiliateStoreId: String, amountPaid: Double, avlQty: Int, companyId: Int, deliveryCharge: Double, discount: Double, fyndStoreId: String, hsnCodeId: String, identifier: [String: Any], itemId: Int, itemSize: String, modifiedOn: String, pdfLinks: MarketPlacePdf? = nil, priceEffective: Double, priceMarked: Double, quantity: Int, sellerIdentifier: String, sku: String, storeId: Int, transferPrice: Int, unitPrice: Double, id: String) {
            self.priceEffective = priceEffective

            self.companyId = companyId

            self.fyndStoreId = fyndStoreId

            self.pdfLinks = pdfLinks

            self.identifier = identifier

            self.affiliateMeta = affiliateMeta

            self.affiliateStoreId = affiliateStoreId

            self.sku = sku

            self.amountPaid = amountPaid

            self.sellerIdentifier = sellerIdentifier

            self.avlQty = avlQty

            self.discount = discount

            self.modifiedOn = modifiedOn

            self.unitPrice = unitPrice

            self.storeId = storeId

            self.id = id

            self.hsnCodeId = hsnCodeId

            self.quantity = quantity

            self.deliveryCharge = deliveryCharge

            self.priceMarked = priceMarked

            self.itemId = itemId

            self.transferPrice = transferPrice

            self.itemSize = itemSize
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            priceEffective = try container.decode(Double.self, forKey: .priceEffective)

            companyId = try container.decode(Int.self, forKey: .companyId)

            fyndStoreId = try container.decode(String.self, forKey: .fyndStoreId)

            do {
                pdfLinks = try container.decode(MarketPlacePdf.self, forKey: .pdfLinks)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            identifier = try container.decode([String: Any].self, forKey: .identifier)

            affiliateMeta = try container.decode([String: Any].self, forKey: .affiliateMeta)

            affiliateStoreId = try container.decode(String.self, forKey: .affiliateStoreId)

            sku = try container.decode(String.self, forKey: .sku)

            amountPaid = try container.decode(Double.self, forKey: .amountPaid)

            sellerIdentifier = try container.decode(String.self, forKey: .sellerIdentifier)

            avlQty = try container.decode(Int.self, forKey: .avlQty)

            discount = try container.decode(Double.self, forKey: .discount)

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            unitPrice = try container.decode(Double.self, forKey: .unitPrice)

            storeId = try container.decode(Int.self, forKey: .storeId)

            id = try container.decode(String.self, forKey: .id)

            hsnCodeId = try container.decode(String.self, forKey: .hsnCodeId)

            quantity = try container.decode(Int.self, forKey: .quantity)

            deliveryCharge = try container.decode(Double.self, forKey: .deliveryCharge)

            priceMarked = try container.decode(Double.self, forKey: .priceMarked)

            itemId = try container.decode(Int.self, forKey: .itemId)

            transferPrice = try container.decode(Int.self, forKey: .transferPrice)

            itemSize = try container.decode(String.self, forKey: .itemSize)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(fyndStoreId, forKey: .fyndStoreId)

            try? container.encodeIfPresent(pdfLinks, forKey: .pdfLinks)

            try? container.encodeIfPresent(identifier, forKey: .identifier)

            try? container.encodeIfPresent(affiliateMeta, forKey: .affiliateMeta)

            try? container.encodeIfPresent(affiliateStoreId, forKey: .affiliateStoreId)

            try? container.encodeIfPresent(sku, forKey: .sku)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)

            try? container.encodeIfPresent(avlQty, forKey: .avlQty)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(unitPrice, forKey: .unitPrice)

            try? container.encodeIfPresent(storeId, forKey: .storeId)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(hsnCodeId, forKey: .hsnCodeId)

            try? container.encodeIfPresent(quantity, forKey: .quantity)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(itemId, forKey: .itemId)

            try? container.encodeIfPresent(transferPrice, forKey: .transferPrice)

            try? container.encodeIfPresent(itemSize, forKey: .itemSize)
        }
    }
}

public extension PlatformClient.ApplicationClient.Order {
    /*
         Model: AffiliateBag
         Used By: Order
     */

    class AffiliateBag: Codable {
        public var priceEffective: Double

        public var companyId: Int

        public var fyndStoreId: String

        public var pdfLinks: MarketPlacePdf?

        public var identifier: [String: Any]

        public var affiliateMeta: [String: Any]

        public var affiliateStoreId: String

        public var sku: String

        public var amountPaid: Double

        public var sellerIdentifier: String

        public var avlQty: Int

        public var discount: Double

        public var modifiedOn: String

        public var unitPrice: Double

        public var storeId: Int

        public var id: String

        public var hsnCodeId: String

        public var quantity: Int

        public var deliveryCharge: Double

        public var priceMarked: Double

        public var itemId: Int

        public var transferPrice: Int

        public var itemSize: String

        public enum CodingKeys: String, CodingKey {
            case priceEffective = "price_effective"

            case companyId = "company_id"

            case fyndStoreId = "fynd_store_id"

            case pdfLinks = "pdf_links"

            case identifier

            case affiliateMeta = "affiliate_meta"

            case affiliateStoreId = "affiliate_store_id"

            case sku

            case amountPaid = "amount_paid"

            case sellerIdentifier = "seller_identifier"

            case avlQty = "avl_qty"

            case discount

            case modifiedOn = "modified_on"

            case unitPrice = "unit_price"

            case storeId = "store_id"

            case id = "_id"

            case hsnCodeId = "hsn_code_id"

            case quantity

            case deliveryCharge = "delivery_charge"

            case priceMarked = "price_marked"

            case itemId = "item_id"

            case transferPrice = "transfer_price"

            case itemSize = "item_size"
        }

        public init(affiliateMeta: [String: Any], affiliateStoreId: String, amountPaid: Double, avlQty: Int, companyId: Int, deliveryCharge: Double, discount: Double, fyndStoreId: String, hsnCodeId: String, identifier: [String: Any], itemId: Int, itemSize: String, modifiedOn: String, pdfLinks: MarketPlacePdf? = nil, priceEffective: Double, priceMarked: Double, quantity: Int, sellerIdentifier: String, sku: String, storeId: Int, transferPrice: Int, unitPrice: Double, id: String) {
            self.priceEffective = priceEffective

            self.companyId = companyId

            self.fyndStoreId = fyndStoreId

            self.pdfLinks = pdfLinks

            self.identifier = identifier

            self.affiliateMeta = affiliateMeta

            self.affiliateStoreId = affiliateStoreId

            self.sku = sku

            self.amountPaid = amountPaid

            self.sellerIdentifier = sellerIdentifier

            self.avlQty = avlQty

            self.discount = discount

            self.modifiedOn = modifiedOn

            self.unitPrice = unitPrice

            self.storeId = storeId

            self.id = id

            self.hsnCodeId = hsnCodeId

            self.quantity = quantity

            self.deliveryCharge = deliveryCharge

            self.priceMarked = priceMarked

            self.itemId = itemId

            self.transferPrice = transferPrice

            self.itemSize = itemSize
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            priceEffective = try container.decode(Double.self, forKey: .priceEffective)

            companyId = try container.decode(Int.self, forKey: .companyId)

            fyndStoreId = try container.decode(String.self, forKey: .fyndStoreId)

            do {
                pdfLinks = try container.decode(MarketPlacePdf.self, forKey: .pdfLinks)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            identifier = try container.decode([String: Any].self, forKey: .identifier)

            affiliateMeta = try container.decode([String: Any].self, forKey: .affiliateMeta)

            affiliateStoreId = try container.decode(String.self, forKey: .affiliateStoreId)

            sku = try container.decode(String.self, forKey: .sku)

            amountPaid = try container.decode(Double.self, forKey: .amountPaid)

            sellerIdentifier = try container.decode(String.self, forKey: .sellerIdentifier)

            avlQty = try container.decode(Int.self, forKey: .avlQty)

            discount = try container.decode(Double.self, forKey: .discount)

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            unitPrice = try container.decode(Double.self, forKey: .unitPrice)

            storeId = try container.decode(Int.self, forKey: .storeId)

            id = try container.decode(String.self, forKey: .id)

            hsnCodeId = try container.decode(String.self, forKey: .hsnCodeId)

            quantity = try container.decode(Int.self, forKey: .quantity)

            deliveryCharge = try container.decode(Double.self, forKey: .deliveryCharge)

            priceMarked = try container.decode(Double.self, forKey: .priceMarked)

            itemId = try container.decode(Int.self, forKey: .itemId)

            transferPrice = try container.decode(Int.self, forKey: .transferPrice)

            itemSize = try container.decode(String.self, forKey: .itemSize)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(fyndStoreId, forKey: .fyndStoreId)

            try? container.encodeIfPresent(pdfLinks, forKey: .pdfLinks)

            try? container.encodeIfPresent(identifier, forKey: .identifier)

            try? container.encodeIfPresent(affiliateMeta, forKey: .affiliateMeta)

            try? container.encodeIfPresent(affiliateStoreId, forKey: .affiliateStoreId)

            try? container.encodeIfPresent(sku, forKey: .sku)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)

            try? container.encodeIfPresent(avlQty, forKey: .avlQty)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(unitPrice, forKey: .unitPrice)

            try? container.encodeIfPresent(storeId, forKey: .storeId)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(hsnCodeId, forKey: .hsnCodeId)

            try? container.encodeIfPresent(quantity, forKey: .quantity)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(itemId, forKey: .itemId)

            try? container.encodeIfPresent(transferPrice, forKey: .transferPrice)

            try? container.encodeIfPresent(itemSize, forKey: .itemSize)
        }
    }
}
